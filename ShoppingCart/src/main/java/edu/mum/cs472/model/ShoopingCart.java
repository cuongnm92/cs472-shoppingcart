package edu.mum.cs472.model;

public class ShoopingCart {

	 private Product product;
	 
	 private int quantity;
	 
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Override
	public int hashCode() {
		return product.getProductId();
	}
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof ShoopingCart) {
			ShoopingCart cart = (ShoopingCart) obj;
			if(cart.getProduct().getProductId() == this.product.getProductId()) {
				return true;
			}
		}
		return false;
	}
	
	
	 
}
