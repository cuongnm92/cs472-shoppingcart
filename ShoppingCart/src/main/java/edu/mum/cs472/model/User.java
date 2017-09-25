package edu.mum.cs472.model;

import java.util.ArrayList;
import java.util.List;

public class User {
	private int userId;
	private List<Role> roles = new ArrayList<>();
	private String firstName;
	private String LastName;
	private String email;
	private String username;
	private String password;

	public List<Role> getRoles() {
		return roles;
	}

	public void addRole(Role role) {
		this.roles.add(role);
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	// private int shippingAddress;
	// private int billingAdress;

}
