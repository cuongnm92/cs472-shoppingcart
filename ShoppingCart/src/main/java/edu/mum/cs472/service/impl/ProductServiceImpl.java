package edu.mum.cs472.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.mum.cs472.model.Category;
import edu.mum.cs472.model.Product;
import edu.mum.cs472.repository.ProductRepository;
import edu.mum.cs472.service.CategoryService;
import edu.mum.cs472.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductRepository productRepository;
	
	@Autowired
	CategoryService categoryService;
	
	@Override
	public List<Product> getProductByCategory(Category category) {
		return productRepository.findAllByCategory(category);
	}

	@Override
	public List<Product> getProductByCategory(Long categoryId) {
		Category category = categoryService.getCategoryById(categoryId);
		return productRepository.findAllByCategory(category);
	}

	@Override
	public Product getProductById(Long id) {
		return productRepository.findById(id);
	}

}
