package edu.mum.cs472.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.mum.cs472.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Long>{
	Category findById(Long id);
}
