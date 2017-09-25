package edu.mum.cs472.service;

import edu.mum.cs472.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
