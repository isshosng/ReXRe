package com.hyundai.controller.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyundai.domain.PageMaker;
import com.hyundai.domain.review.ReviewVO;
import com.hyundai.service.review.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Controller
@Log4j
@RequestMapping("/review/*")
@AllArgsConstructor
public class ReviewController {
	// ReviewService 객체 불러?���?
	@Autowired
	private ReviewService service;
	
	/**
	 * 리뷰 리스?���? 불러?��?�� ?��?�� PageMaker
	 */
	@GetMapping("/list")
	public void list(PageMaker pageMaker, Model model) throws Exception {

		int total = service.getTotal(pageMaker); // 게시�??�� 개수 ?��?��
		pageMaker.setTotPage(total);
		List<ReviewVO> list = service.getListWithPaging(pageMaker);
		System.out.println(" total : " +total);
		
		
		model.addAttribute("pagination", pageMaker.pagination("list")); // ?��?���??��?��?�� ?��?��
		log.info("pageMaker >>>>>>>>>>>>>>>>>" + pageMaker.pagination("list"));
		model.addAttribute("count", total); // 게시�??�� �? 개수
		model.addAttribute("pageMaker", pageMaker); // ?��?���? 처리?�� 값을 pageMaker?�� ?��?��
		model.addAttribute("list", list);
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@" + pageMaker);
		
	}
	
	// 게시?�� insert ?��?���?
		@GetMapping("/insert")
		public void register() {
			log.info("게시?�� ?���? ?��?���? ");
		}

		// 게시�? ?���? ?��?���??��?�� ?���? 버튼?�� ?��르면 insert ?��?�� 리스?�� ?��?���? �? ?��면으�? ?��?�� -> insert.jsp
		@PostMapping("/insert")
		public String insert(ReviewVO review, RedirectAttributes rttr) throws Exception {
			System.out.println(" insert  : " + review.toString());

			// insert ?��?��
			service.insert(review);
			rttr.addFlashAttribute("inserted", review.getReviewId());
			return "redirect:list";
		}
		
		// 게시�? 조회 �? ?��?�� -> read.jsp 조회?���? ?��?? 게시�??�� ?���??���? reviewId�? ?��?���? ?���? ?��?�� 바인?��
		@GetMapping({ "/read", "/update" })
		public void read(@RequestParam("reviewId") long reviewId, Model model) throws Exception {
			model.addAttribute("review", service.read(reviewId));
		}
		
		@PostMapping("/update") // 게시�? ?��?��(update) ?��?���?. ?��?�� 버튼?�� ?��르면 ?��?��?��
		public String update(ReviewVO review, RedirectAttributes rttr) throws Exception {
			// ?��?��?��?�� 값이 ?��?���? success 결과�? attribute 값으�? ?��?��?��
			if (service.update(review)) {
				rttr.addFlashAttribute("result", "success");
			}
			return "redirect:read?boardId=" + review.getReviewId();
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
		public ResponseEntity<?> delete(@RequestParam("reviewId") long reviewId, RedirectAttributes rttr) throws Exception {
			// 받아?�� boardId값으�? ?��?��?��?�� 게시�??�� ?��?��?��?��
			try {
				service.delete(reviewId);
				return ResponseEntity.status(200).body("success");
			} catch (Exception e) {
				return ResponseEntity.status(403).body("?��?�� ?���?");
			}
		}
	
	

}
