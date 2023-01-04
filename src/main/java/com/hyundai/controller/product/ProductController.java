package com.hyundai.controller.product;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	
	//product��ü��ǰ
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
	
	//productī�װ�
	@GetMapping("/productList/category")
	public String list(@RequestParam("product_category") String category, Criteria cri, Model model) throws Exception {
		log.info("productList/category ����");
		log.info(category);
		
		int total = productService.getTotal(cri);
		model.addAttribute("count", total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("productList", productService.getCategoryWithPaging(cri, category));
		
		return "/products/productList";
	}
	
	
	//��ǰ��
	@GetMapping("/productDetail")
	public String list(@RequestParam("product_id") Long product_id, Model model) throws Exception {
		
		log.info("��ǰ��");
		log.info(product_id);
		
		model.addAttribute("productDetail", productService.getProductDetail(product_id));

		return "/products/productDetail";
	}
	
	
}
