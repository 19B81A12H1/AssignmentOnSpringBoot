package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.table.User;

public interface UserRepositary extends JpaRepository<User, Integer>{

}
