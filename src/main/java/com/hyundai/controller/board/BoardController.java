package com.hyundai.controller.board;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyundai.domain.PageMaker;
import com.hyundai.domain.board.BoardVO;
import com.hyundai.service.board.BoardService;
import com.hyundai.util.UploadFileUtils;

import lombok.extern.log4j.Log4j;

/*********************************
 * @function : BoardController
 * @author : Taeseung Choi
 * @Date : Dec 25. 2022.
 *********************************/
@Controller
@Log4j
@RequestMapping("/board")
/* @AllArgsConstructor */
public class BoardController {
	// BoardService 객체불러오기
	@Autowired
	private BoardService service;

	@Resource(name = "uploadPath")
	private String uploadPath; // servlet-context.xml에서 설정했던 uploadPath를 추가

	/**
	 * 게시판에서 게시글의 리스트를 불러오기 위한 함수 PageMaker 를 사용해 페이징 처리
	 */
	@GetMapping("/list")
	public void list(PageMaker pageMaker, Model model) throws Exception {

		int total = service.getTotal(pageMaker); // 게시글의 개수 표시
		pageMaker.setTotPage(total);
		List<BoardVO> list = service.getListWithPaging(pageMaker);
		System.out.println(" total : " + total);

		model.addAttribute("pagination", pageMaker.pagination("list")); // 페이지네이션 설정
		log.info("pageMaker >>>>>>>>>>>>>>>>>" + pageMaker.pagination("list"));
		model.addAttribute("count", total); // 게시글의 총 개수
		model.addAttribute("pageMaker", pageMaker); // 페이징 처리한 값을 pageMaker에 전달
		model.addAttribute("list", list);
	}

	// 게시판 insert 페이지

	@GetMapping("/insert")
	public void register() {
		
		System.out.println("@@@@@@@@@@@@b나야");
		log.info("게시판 등록 페이지 ");

		
	}

	// 게시글 등록 페이지에서 등록 버튼을 누르면 insert 후에 리스트 페이지 첫 화면으로 이동 -> insert.jsp
	@PostMapping("/insert")
	public String insert(BoardVO board, RedirectAttributes rttr, @RequestPart(required = false) MultipartFile file)
			throws Exception {

		System.out.println("@@@@@@@@@@@@board/insert@@@@");
		System.out.println(" insert  : " + board.toString());

		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;
		log.info(file);
		if (!file.isEmpty()) {
			log.info("여기왔설");
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		board.setFaqsImg(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		board.setFaqsThumbImg(
				File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);

		// insert 시작
		service.insert(board);

		rttr.addFlashAttribute("inserted", board.getBoardId());
		return "redirect:list";
	}

	// 게시글 조회 및 수정 -> read.jsp 조회하고 싶은 게시글을 클릭하면 boardId과 페이징 정보 자동 바인딩
	@GetMapping({ "/read", "/update" })
	public void read(@RequestParam("boardId") long boardId, Model model) throws Exception {
		model.addAttribute("board", service.read(boardId));
	}

	@PostMapping("/update") // 게시글 수정(update) 페이지. 수정 버튼을 누르면 실행됨
	public String update(BoardVO board, RedirectAttributes rttr) throws Exception {
		// 수정되는 값이 있으면 success 결과를 attribute 값으로 전송함
		if (service.update(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:read?boardId=" + board.getBoardId();
	}

	/**
	 * Ajax 반환 처리 게시글 조회 페이지에서 삭제 버튼을 누를시 실행되는 메서드
	 * 
	 * @param boardId
	 * @param rttr
	 * @return
	 * @throws Exception
	 */
	@PostMapping("/delete")
	public ResponseEntity<String> delete(@RequestParam("boardId") long boardId, RedirectAttributes rttr)
			throws Exception {
		// 받아온 boardId값으로 해당되는 게시글을 삭제한다
		try {
			service.delete(boardId);
			return new ResponseEntity<>("success", HttpStatus.OK);
//         return ResponseEntity.status(200).body("success");
		} catch (Exception e) {
			return new ResponseEntity<>("delete error", HttpStatus.FORBIDDEN);
//         return ResponseEntity.status(403).body("삭제 오류");
		}
	} // Rest api일 경우 responseentity로 받으면 좋음

}