package edu.mum.cs472.service;

import java.util.List;

import edu.mum.cs472.model.Role;

public interface RoleService {
	
	List<Role> getRoles();
	
	Role getRoleByName(String name);
}
