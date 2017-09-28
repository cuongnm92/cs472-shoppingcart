package edu.mum.cs472.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.mum.cs472.model.Category;
import edu.mum.cs472.model.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{
	
	List<Product> findAllByCategory(Category category);
	Product findById(Long id);
}
