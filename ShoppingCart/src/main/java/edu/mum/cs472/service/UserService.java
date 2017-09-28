package edu.mum.cs472.service;

import java.util.List;

import edu.mum.cs472.model.User;

public interface UserService {
    
	void save(User user);

    User findByUsername(String username);
    
    List<User> getAllUser();
    
    void deleteUser(String username);
}
