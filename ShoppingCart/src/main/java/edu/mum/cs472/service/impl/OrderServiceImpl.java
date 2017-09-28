package edu.mum.cs472.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.mum.cs472.model.Order;
import edu.mum.cs472.repository.OrderRepository;
import edu.mum.cs472.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderRepository orderRepository;
	
	@Override
	public List<Order> getOrderByUserId(Long userId) {
		return orderRepository.findAllByUserId(userId);
	}
}
