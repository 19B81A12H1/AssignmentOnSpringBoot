package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.UserRepositary;
import com.example.demo.table.User;

@Service
public class UserService {

	@Autowired
	private UserRepositary userRepositary;

	public User saveUser(User user) {
		return userRepositary.save(user);
	}

	public List<User> getAllDetails() {
		List<User> u = userRepositary.findAll();
		return u;
	}
}
