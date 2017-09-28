package edu.mum.cs472.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.mum.cs472.model.Order;

public interface OrderRepository extends JpaRepository<Order, Long>{
	List<Order> findAllByUserId(Long id);
}
