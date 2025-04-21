package com.siptool.service;

import java.util.Optional;

import com.siptool.model.User;

public interface UserService {
	void registerUser(User user);
	Optional<User> findByEmail(String email); // Changed from boolean to User
}