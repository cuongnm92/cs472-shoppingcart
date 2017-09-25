package edu.mum.cs472.model;

public class ProductOrder {
	private int productOrderId;
	private int productId;
	private String productName;
	
	
	private int orderId;
	private int amount;
	
	
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductOrderId() {
		return productOrderId;
	}
	public void setProductOrderId(int productOrderId) {
		this.productOrderId = productOrderId;
	}
	public int getProductId() {
		return productId;
	}
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	} 
	
	
}
