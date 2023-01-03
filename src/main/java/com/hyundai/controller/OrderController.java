
package com.hyundai.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyundai.domain.CartItem;
import com.hyundai.service.CartService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;



// �ڼ�ȯ
// �ֹ�

@Slf4j
@Controller
@RequiredArgsConstructor
public class OrderController {
	
	private final CartService cartService;
	
	@GetMapping("/shop/order")
	public String CartToOrder(@RequestParam List<Integer> id, Model model) {
		
		System.out.println("���Գ���?");
		
		for(Integer a : id ) {
			System.out.println(a);
		}
		
		
		// �������� �޾ƿ���
		Integer member_id = 255;
		
		List<CartItem> cartItems = cartService.CartToOrder(id, member_id);
	
		model.addAttribute("cartItems", cartItems);
		
		return "order/order";
		

	}
	
	
	
	
	
	                   
	
}
