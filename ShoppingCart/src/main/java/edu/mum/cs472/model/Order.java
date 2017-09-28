package edu.mum.cs472.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "history")
public class Order {
	
	private Long id;
	private Long productId;
	private Long quantity;
	private Long userId;
	private Date orderDate;
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

	public Long getProductId() {
		return productId;
	}

	public Long getQuantity() {
		return quantity;
	}

	public Long getUserId() {
		return userId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	
}
