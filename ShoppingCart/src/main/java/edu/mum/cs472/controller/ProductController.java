package edu.mum.cs472.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.mum.cs472.model.Category;
import edu.mum.cs472.model.Product;
import edu.mum.cs472.service.CategoryService;
import edu.mum.cs472.service.ProductService;

@Controller
@RequestMapping(value = "product")
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addProduct(Model data) {
		
		data.addAttribute("product", new Product());
		return "product/addProduct";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveProduct(@ModelAttribute("product") Product product, BindingResult result, Model data) {
    	
    	return "redirect:/";
    }
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@ResponseBody
    public List<Product> getProductByCategory(@RequestBody Map<String, String> input) {
    	
		Long categoryId = Long.valueOf(input.get("id"));
		
		Category category = categoryService.getCategoryById(categoryId);
		
		List<Product> products = productService.getProductByCategory(category);
		
    	return products;
    }
	
	@RequestMapping(value = "/list/{id}", method = RequestMethod.GET)
    public String getProductByCategory(@PathVariable String id, Model data){
    	
		List<Category> categories = categoryService.findAll();
		data.addAttribute("categories", categories);
		
		Long categoryId = Long.valueOf(id);
		Category category = categoryService.getCategoryById(categoryId);
		
		List<Product> products = productService.getProductByCategory(category);
		data.addAttribute("products", products);
		
		data.addAttribute("activeId", Integer.valueOf(id));
		
		// System.out.println("Here");
		
    	return "home/index";
    }
	
	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
    public String getProduct(@PathVariable String id, Model data) {
    	
		Long productId = Long.valueOf(id);
		Product product = productService.getProductById(productId);
		
		data.addAttribute("product", product);
		
    	return "product/detail";
    }
}
