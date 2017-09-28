package edu.mum.cs472.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.mum.cs472.model.Category;
import edu.mum.cs472.model.Product;
import edu.mum.cs472.service.CategoryService;
import edu.mum.cs472.service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model data) {
		
		List<Category> categories = categoryService.findAll();
		data.addAttribute("categories", categories);
		
		List<Product> products = productService.getProductByCategory(Long.valueOf(1));
		data.addAttribute("products", products);
		
		data.addAttribute("activeId", 1);
		return "home/index";
	}
	
	@RequestMapping(value = "/thankyou", method = RequestMethod.GET)
	public String thankYou(Model data) {
		
		return "home/thankyou";
	}
	
	@RequestMapping(value = "/address", method = RequestMethod.POST)
	public String getAddress(Model data) {
		
		return "home/thankyou";
	}
}
