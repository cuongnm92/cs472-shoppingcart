package edu.mum.cs472.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.mum.cs472.model.Order;
import edu.mum.cs472.model.Product;
import edu.mum.cs472.model.User;
import edu.mum.cs472.service.OrderService;
import edu.mum.cs472.service.ProductService;
import edu.mum.cs472.service.UserService;

@Controller
@RequestMapping(value = "order")
public class OrderController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	OrderService orderService;
	
	@RequestMapping(value = "/history", method = RequestMethod.GET)
	public String addProduct(Model data) {
		
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		User user = userService.findByUsername(username);
		Long userId = user.getId();
		
		List<Order> orders = orderService.getOrderByUserId(userId);
		List<Product> products = new ArrayList<Product>();
		
		for(int i=0; i<orders.size(); i++) {
			products.add(productService.getProductById(orders.get(i).getProductId()));
		}
		
		
		data.addAttribute("orders", orders);
		data.addAttribute("products", products);
		
		return "order/history";
	}
}
