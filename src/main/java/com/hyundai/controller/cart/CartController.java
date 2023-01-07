
package com.hyundai.controller.cart;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyundai.domain.CartItem;
import com.hyundai.service.CartService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class CartController {

	private final CartService cartService;

	// 장바구니 요청
	@GetMapping("/shop/cart")
	public String showCart(Model model, HttpServletRequest requset) {

		HttpSession session = requset.getSession();
		Long memberId = (Long) session.getAttribute("member_id");

		System.out.println(memberId);

		List<CartItem> cartItems = cartService.findCart(255);

		model.addAttribute("cartItems", cartItems);
		return "cart/cart2";

	}

	@ResponseBody
	@GetMapping("/shop/cartDelOne")
	public void deleteOne(@RequestParam("product_id") Integer product_id,
			@RequestParam("member_id") Integer member_id) {

		System.out.println("데이타하나삭제");

		cartService.deleteOne(member_id, product_id);

	}

	@ResponseBody
	@GetMapping("/shop/cartDelChecked")
	public void deleteCheked(@RequestParam(value = "chbox[]") List<String> chArr) {

		// principle 로 맴버아이디 받아야함, or Session
		Integer member_id = 255;

		for (String pro_id : chArr) {
			Integer product_id = Integer.parseInt(pro_id);
			cartService.deleteOne(member_id, product_id);
		}

		System.out.println("체크삭제");

	}

	@ResponseBody
	@GetMapping("/shop/cartDelAll")
	public void deleteAll(Model model, HttpServletRequest requset) {

		HttpSession session = requset.getSession();
		Integer member_id = (Integer) session.getAttribute("member_id");

		// principle 로 맴버아이디 받아야함, or Session
		member_id = 255;

		cartService.deleteAll(member_id);

	}

	// @PostMapping("/shop/upQuantity")
	public void upQuantity2(@RequestBody Map<String, Integer> updateData) {

		Integer product_qauntity = updateData.get("product_qauntity");
		Integer product_id = updateData.get("product_id");
		Integer member_id = updateData.get("member_id");

		cartService.updateQuantity(product_qauntity, product_id, member_id);

	}

	@ResponseBody
	@GetMapping("/shop/upQuantity")
	public void upQuantity(@RequestParam("product_qauntity") Integer product_qauntity,
			@RequestParam("product_id") Integer product_id, @RequestParam("member_id") Integer member_id) {

		cartService.updateQuantity(product_qauntity, product_id, member_id);

	}

	@ResponseBody
	@GetMapping("/shop/cartinsert")
	public void insertCart(@RequestParam("product_id") Integer product_id,
			@RequestParam("member_id") Integer member_id, @RequestParam("qty") Integer qty) {

		
		System.out.println(product_id);
		System.out.println(member_id);
		System.out.println(qty);
		
		cartService.insertCart(product_id, member_id,qty);

	}

}
