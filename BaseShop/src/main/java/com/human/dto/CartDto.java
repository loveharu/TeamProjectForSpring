package com.human.dto;

import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

public class CartDto {
	private int orderId;
	@DateTimeFormat(pattern="yyyy-MM-dd'T'HH:mm")
	private LocalDateTime orderDate;
	private int orderCount;
	private int p_id;
	private String u_id;
	
	public CartDto() {}
	

	public CartDto(int orderId, LocalDateTime orderDate, int orderCount, int p_id, String u_id) {
		super();
		this.orderId = orderId;
		this.orderDate = orderDate;
		this.orderCount = orderCount;
		this.p_id = p_id;
		this.u_id = u_id;
	}

	@Override
	public String toString() {
		return "CartDto [orderId=" + orderId + ", orderDate=" + orderDate + ", orderCount=" + orderCount + ", p_id="
				+ p_id + ", u_id=" + u_id + "]";
	}


	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public LocalDateTime getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(LocalDateTime orderDate) {
		this.orderDate = orderDate;
	}

	public int getOrderCount() {
		return orderCount;
	}

	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	

}
