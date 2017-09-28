package edu.mum.cs472.service;

import java.util.List;

import edu.mum.cs472.model.Category;
import edu.mum.cs472.model.Product;

public interface ProductService {
	
	List<Product> getProductByCategory(Category category);
	
	List<Product> getProductByCategory(Long categoryId);
	
	Product getProductById(Long id);
}
