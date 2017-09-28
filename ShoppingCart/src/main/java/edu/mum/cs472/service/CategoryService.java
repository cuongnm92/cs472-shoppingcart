package edu.mum.cs472.service;

import java.util.List;

import edu.mum.cs472.model.Category;

public interface CategoryService {
		
	List<Category> findAll();
	
	Category getCategoryById(Long id);
}
