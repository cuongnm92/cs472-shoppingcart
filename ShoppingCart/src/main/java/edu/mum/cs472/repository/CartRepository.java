package edu.mum.cs472.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.mum.cs472.model.Cart;

public interface CartRepository extends JpaRepository<Cart, Long>{
	List<Cart> findAllByUserId(Long id);
}
