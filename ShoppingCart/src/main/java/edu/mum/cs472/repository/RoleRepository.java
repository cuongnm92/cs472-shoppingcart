package edu.mum.cs472.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.mum.cs472.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
	Role findByName(String name);
}
