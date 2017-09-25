package edu.mum.cs472.service;

public interface SecurityService {
    String findLoggedInUsername();

    void autologin(String username, String password);
}
