package edu.mum.cs472.service;

import java.util.List;
import edu.mum.cs472.model.Order;

public interface OrderService {
	
	List<Order> getOrderByUserId(Long userId);
}
