package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.service.UserService;
import com.example.demo.table.User;

import jakarta.servlet.http.HttpSession;


@Controller
public class UserController {
	
	@Autowired
	UserService userService;

	  
	  @GetMapping(value="/")
	  public String home() {
		  return "Login";
	  }
	  
	  @GetMapping(value = "/Register")
	  public String home2() {
		  return "Register";
	  }
	      @PostMapping(value="/loginSave")
	      public String saveLog(@ModelAttribute User u) {
	    	  userService.saveUser(u);
	    	  return "Login";
	    	  
	      }
	      
	   @GetMapping(value = "/login")
	   
		public String login(HttpSession session, Model m) {
			List<User> u = userService.getAllDetails();
			m.addAttribute("list", u);

			if (u != null && !u.isEmpty()) {
				session.setAttribute("loggedInUser", u);
				System.out.println("Your loggin in");
				return "CustomerPage";
			} else {
				m.addAttribute("error", "Invalid username or password");
				return "redirect:/Login";
			}
		}
	}  