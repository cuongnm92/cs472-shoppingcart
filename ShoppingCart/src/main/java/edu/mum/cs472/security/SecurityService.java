package edu.mum.cs472.security;

public interface SecurityService {
    String findLoggedInUsername();

    void autologin(String username, String password);
}