package edu.mum.cs472.service;

import java.util.List;

import edu.mum.cs472.model.Cart;

public interface CartService {
	
	List<Cart> getAllByUserId(Long id);
	
	Cart addNewProduct(Long userId, Long productId, Long quality);
	
	Cart updateCartWithQuality(Cart cart, Long quality);
}
