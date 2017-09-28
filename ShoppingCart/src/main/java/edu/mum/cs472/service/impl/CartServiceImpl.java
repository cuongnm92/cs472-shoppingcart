package edu.mum.cs472.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.mum.cs472.model.Cart;
import edu.mum.cs472.repository.CartRepository;
import edu.mum.cs472.service.CartService;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	CartRepository cartRepository;
	
	@Override
	public List<Cart> getAllByUserId(Long id) {
		return cartRepository.findAllByUserId(id);
	}

	@Override
	public Cart addNewProduct(Long userId, Long productId, Long quality) {
		Cart cart = new Cart();
		
		cart.setProductId(productId);
		cart.setUserId(userId);
		cart.setQuality(quality);
		
		cartRepository.save(cart);
		
		return null;
	}

	@Override
	public Cart updateCartWithQuality(Cart cart, Long quality) {
		
		cart.setQuality(quality);
		cartRepository.save(cart);
		
		return cart;
	}
	
	
}
