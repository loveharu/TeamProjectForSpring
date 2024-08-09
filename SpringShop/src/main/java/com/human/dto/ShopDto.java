package com.human.dto;

public class ShopDto {
	private int productId;
	private String productName;
	private String Des;
	private int Price;
	private int CategoryId;
	private String img;
	public ShopDto(int productId, String productName, String des, int price, int categoryId, String img) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.Des = des;
		this.Price = price;
		this.CategoryId = categoryId;
		this.img = img;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img; 
	}
	public ShopDto() {}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getDes() {
		return Des;
	}
	public void setDes(String des) {
		Des = des;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public int getCategoryId() {
		return CategoryId;
	}
	public void setCategoryId(int categoryId) {
		CategoryId = categoryId;
	}
	@Override
	public String toString() {
		return "ShopDto [productId=" + productId + ", productName=" + productName + ", Des=" + Des + ", Price=" + Price
				+ ", CategoryId=" + CategoryId + ", img=" + img + "]";
	}
	
	
}
