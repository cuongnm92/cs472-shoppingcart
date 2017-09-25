package edu.mum.cs472.model;

public class Role {
     private int roleId;
     private String Role;
     
     
	public Role(int roleId, String role) {
		super();
		this.roleId = roleId;
		Role = role;
	}
	public int getRoleId() {
		return roleId;
	}
	
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public String getRole() {
		return Role;
	}
	public void setRole(String role) {
		Role = role;
	}
     
     
}
