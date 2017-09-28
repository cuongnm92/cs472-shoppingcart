package edu.mum.cs472.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.mum.cs472.model.Cart;
import edu.mum.cs472.model.Product;
import edu.mum.cs472.model.User;
import edu.mum.cs472.service.CartService;
import edu.mum.cs472.service.ProductService;
import edu.mum.cs472.service.UserService;

@Controller
@RequestMapping(value = "cart")
public class CartController {

	@Autowired
	CartService cartService;

	@Autowired
	ProductService productService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getCart(Model data) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		if (authentication != null && authentication.isAuthenticated() && !(authentication instanceof AnonymousAuthenticationToken)) {
			String username = authentication.getName();
			
			User user = userService.findByUsername(username);
			Long userId = user.getId();
			
			List<Cart> carts = cartService.getAllByUserId(userId);
			List<Product> products = new ArrayList<Product>();
			List<Long> qualities = new ArrayList<Long>();
			Double total = 0.0;
			
			for(int i=0; i<carts.size(); i++) {
				products.add(productService.getProductById(carts.get(i).getProductId()));
				qualities.add(carts.get(i).getQuality());
				total += products.get(i).getPrice() * qualities.get(i);
			}
			
			data.addAttribute("products", products);
			data.addAttribute("qualities", qualities);
			data.addAttribute("total", total);
			
			return "cart/list";
		}

		return "redirect:account/login";
	}
	
	@RequestMapping(value = "/add/{id}", method = RequestMethod.GET)
	public String addToCart(@PathVariable String id, Model data) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		if (authentication != null && authentication.isAuthenticated() && !(authentication instanceof AnonymousAuthenticationToken)) {
			String username = authentication.getName();
			
			User user = userService.findByUsername(username);
			Long userId = user.getId();
			
			List<Cart> carts = cartService.getAllByUserId(userId);
			List<Product> products = new ArrayList<Product>();
			List<Long> qualities = new ArrayList<Long>();
			Double total = 0.0;
			
			boolean added = false;
			for(int i=0; i<carts.size(); i++) {
				products.add(productService.getProductById(carts.get(i).getProductId()));
				qualities.add(carts.get(i).getQuality());
				
				if (carts.get(i).getProductId() == Long.valueOf(id)) {
					qualities.set(i, qualities.get(i) + 1);
					added = true;
				}
				
				total += products.get(i).getPrice() * qualities.get(i);
			}
			
			if (added == false) {
				cartService.addNewProduct(userId, Long.valueOf(id), Long.valueOf(1));
				products.add(productService.getProductById(Long.valueOf(id)));
				qualities.add(Long.valueOf(1));
				
				total += products.get(products.size() - 1).getPrice();
			}
			
			data.addAttribute("products", products);
			data.addAttribute("qualities", qualities);
			data.addAttribute("total", total);
			
			return "cart/list";
		}

		return "redirect:account/login";
	}
	
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public String checkout(Model data) {
		
		data.addAttribute("total", "100.0");
		
		return "cart/checkout";
	}
	
	@RequestMapping(value = "/bill/{total}", method = RequestMethod.GET)
	public String pay(@PathVariable String total, Model data) {
		
		data.addAttribute("total", total);
		
		return "cart/checkout";
	}
}
