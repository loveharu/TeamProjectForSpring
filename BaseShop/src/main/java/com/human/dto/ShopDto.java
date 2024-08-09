package com.human.dto;

public class ShopDto {
	private int product_id;
	private String product_name;
	private String description;
	private int price;
	private int category_id;
	private String product_image;
	public ShopDto() {}
	
	
	

	public ShopDto(int product_id, String product_name, String description, int price, int category_id,
			String product_image) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.description = description;
		this.price = price;
		this.category_id = category_id;
		this.product_image = product_image;
	}




	@Override
	public String toString() {
		return "ShopDto [product_id=" + product_id + ", product_name=" + product_name + ", description=" + description
				+ ", price=" + price + ", category_id=" + category_id + ", product_image=" + product_image + "]";
	}




	public String getProduct_image() {
		return product_image;
	}




	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}




	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	
	
}
