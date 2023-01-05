package com.hyundai.domain;

import lombok.Getter;

import lombok.Setter;

@Getter
@Setter
public class OrderList {

	private Integer OrderId;
	private Integer totalPrice;

	public OrderList(Integer orderId, Integer totalPrice) {
		
		this.OrderId = orderId;
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "OrderList [OrderId=" + OrderId + ", totalPrice=" + totalPrice + "]";
	}

}
