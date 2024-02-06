package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.example.demo.service.CustomerService;
import com.example.demo.table.Customer;

@Controller
public class MainController {
	@Autowired
	CustomerService customerService;


	@GetMapping("/CustomerPage")
	private String showCustomer(Model m) {
		List<Customer> customers= customerService.getAllCustomers();
		  m.addAttribute("customers", customers);
	        System.out.println("list " + customers);
		return "CustomerPage";
	}
	
	
	
	
	@GetMapping("/AddCustomer")
	private String AddPage() {
		return "AddCustomer";
	}

	// creating a get mapping that retrieves the detail of a specific customer
	@GetMapping("/customer/{id}")
	private Optional<Customer> getCustomer(@PathVariable int id) {
		return customerService.getCustomerById(id);
	}

	// creating a delete mapping that deletes a specified customer
	@DeleteMapping("/delete/{id}")
	private String deleteCustomer(@PathVariable int id) {
		customerService.deleteCustomer(id);
		return "CustomerPage";
	}

	// creating post mapping that post the customer detail in the database
	@PostMapping("/saveCustomer")  
	private String saveCustomer(@ModelAttribute Customer customer)   
	{  
	customerService.saveCustomer(customer);  
	return "CustomerPage";
	 }
	
	 @GetMapping("/editCustomer/{id}")
	    public String editCustomerPage(@PathVariable int id, Model model) {
	        Optional<Customer> customer = customerService.getCustomerById(id);
	        model.addAttribute("customer", customer);
	        return "EditCustomer";
	    }

	// creating put mapping that updates the customer detail
	@PostMapping("/edit") 
	private String updateCustomer(@RequestBody Customer customer)   
	{  
	customerService.UpdateCustomer(customer);  
	return "CustomerPage";
	
	}  
	

}
