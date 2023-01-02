package com.hyundai.controller.product;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hyundai.domain.Criteria;
import com.hyundai.domain.PageDTO;
import com.hyundai.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/product/*")
@AllArgsConstructor
public class ProductController {
	private ProductService productService;

	
	
	@GetMapping("/productList") 
	public String list(Criteria cri, Model model) throws Exception {
		log.info("product2"+cri);
		//model.addAttribute("productList", productService.getList(cri)); //����¡ ó���� ��� ����Ʈ 
				
		int total = productService.getTotal(cri); // �Խñ��� ���� ǥ��
		model.addAttribute("count", total); // �Խñ��� �� ����
		model.addAttribute("pageMaker",new PageDTO(cri, total)); // ����¡ ó���� ���� pageMaker�� ����
		model.addAttribute("productList", productService.getListWithPaging(cri));
		
		return "products/productList";
	}
	
	
}
