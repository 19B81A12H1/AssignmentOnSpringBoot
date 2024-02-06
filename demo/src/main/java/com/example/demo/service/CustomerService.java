package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.CustomerRepository;
import com.example.demo.table.Customer;

@Service
public class CustomerService {
    @Autowired
    private CustomerRepository customerRepository;

    public Customer saveCustomer(Customer customer) {
        return customerRepository.save(customer);
    }

    public List<Customer> getAllCustomers() {
        List<Customer> customer=customerRepository.findAll();
        return customer;
    }
   
    public Optional<Customer> getCustomerById(int id) {
        Optional<Customer> customer = customerRepository.findById(id);
        return customer;
    }

    public void deleteCustomer(int id) {
        customerRepository.deleteById(id);
    }
    public void UpdateCustomer(Customer customer) {
    	customerRepository.save(customer);
    }
}

