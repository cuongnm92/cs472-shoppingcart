package edu.mum.cs472.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.mum.cs472.model.Role;
import edu.mum.cs472.repository.RoleRepository;
import edu.mum.cs472.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {
	
	@Autowired
    private RoleRepository roleRepository;
	
	public List<Role> getRoles() {
		return roleRepository.findAll();
	}

	@Override
	public Role getRoleByName(String name) {
		return roleRepository.findByName(name);
	}
}
