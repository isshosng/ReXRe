package com.hyundai.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyundai.domain.PageMaker;
import com.hyundai.domain.board.BoardVO;
import com.hyundai.service.board.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/*********************************
 * @function : BoardController
 * @author : Taeseung Choi
 * @Date : Dec 25. 2022.
 *********************************/
@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	// BoardService 객체불러?���?
	@Autowired
	private BoardService service;

	/**
	 * 게시?��?��?�� 게시�??�� 리스?���? 불러?���? ?��?�� ?��?�� PageMaker �? ?��?��?�� ?��?���? 처리
	 */
	@GetMapping("/list")
	public void list(PageMaker pageMaker, Model model) throws Exception {

		int total = service.getTotal(pageMaker); // 게시�??�� 개수 ?��?��
		pageMaker.setTotPage(total);
		List<BoardVO> list = service.getListWithPaging(pageMaker);
		System.out.println(" total : " +total);
		
		model.addAttribute("pagination", pageMaker.pagination("list")); // ?��?���??��?��?�� ?��?��
		log.info("pageMaker >>>>>>>>>>>>>>>>>" + pageMaker.pagination("list"));
		model.addAttribute("count", total); // 게시�??�� �? 개수
		model.addAttribute("pageMaker", pageMaker); // ?��?���? 처리?�� 값을 pageMaker?�� ?��?��
		model.addAttribute("list", list);
	}

	// 게시?�� insert ?��?���?
	@GetMapping("/insert")
	public void register() {
		log.info("게시?�� ?���? ?��?���? ");
	}

	// 게시�? ?���? ?��?���??��?�� ?���? 버튼?�� ?��르면 insert ?��?�� 리스?�� ?��?���? �? ?��면으�? ?��?�� -> insert.jsp
	@PostMapping("/insert")
	public String insert(BoardVO board, RedirectAttributes rttr) throws Exception {
		System.out.println(" insert  : " + board.toString());

		// insert ?��?��
		service.insert(board);
		rttr.addFlashAttribute("inserted", board.getBoardId());
		return "redirect:list";
	}

	// 게시�? 조회 �? ?��?�� -> read.jsp 조회?���? ?��?? 게시�??�� ?���??���? boardId�? ?��?���? ?���? ?��?�� 바인?��
	@GetMapping({ "/read", "/update" })
	public void read(@RequestParam("boardId") long boardId, Model model) throws Exception {
		model.addAttribute("board", service.read(boardId));
	}

	@PostMapping("/update") // 게시�? ?��?��(update) ?��?���?. ?��?�� 버튼?�� ?��르면 ?��?��?��
	public String update(BoardVO board, RedirectAttributes rttr) throws Exception {
		// ?��?��?��?�� 값이 ?��?���? success 결과�? attribute 값으�? ?��?��?��
		if (service.update(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:read?boardId=" + board.getBoardId();
	}

	/**
	 * Ajax 반환 처리 게시�? 조회 ?��?���??��?�� ?��?�� 버튼?�� ?��를시 ?��?��?��?�� 메서?��
	 * 
	 * @param boardId
	 * @param rttr
	 * @return
	 * @throws Exception
	 */
	@PostMapping("/delete")
	public ResponseEntity<String> delete(@RequestParam("boardId") long boardId, RedirectAttributes rttr) throws Exception {
		// 받아?�� boardId값으�? ?��?��?��?�� 게시�??�� ?��?��?��?��
		try {
			service.delete(boardId);
			return new ResponseEntity<>("success", HttpStatus.OK);
//			return ResponseEntity.status(200).body("success");
		} catch (Exception e) {
			return new ResponseEntity<>("delete error", HttpStatus.FORBIDDEN);
//			return ResponseEntity.status(403).body("?��?�� ?���?");
		}
	} // Rest api?�� 경우 responseentity�? 받으�? 좋음

}