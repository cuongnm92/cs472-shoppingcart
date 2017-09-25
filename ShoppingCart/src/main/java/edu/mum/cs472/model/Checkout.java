package edu.mum.cs472.model;

import java.util.List;

public class Checkout {

	private double total;
	
	private List<ShoopingCart> checkoutProducts;
	
	private int productsQuantity;

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public List<ShoopingCart> getCheckoutProducts() {
		return checkoutProducts;
	}

	public void setCheckoutProducts(List<ShoopingCart> checkoutProducts) {
		this.checkoutProducts = checkoutProducts;
	}

	public int getProductsQuantity() {
		return productsQuantity;
	}

	public void setProductsQuantity(int productsQuantity) {
		this.productsQuantity = productsQuantity;
	}

}
