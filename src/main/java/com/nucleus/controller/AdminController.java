package com.nucleus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nucleus.service.CustomerService;
import com.nucleus.service.LoanService;

@Controller
public class AdminController {
	
	@Autowired
	CustomerService customerService;
	
	@Autowired
	LoanService loanService;
	
	@RequestMapping("/createCustomer")
	public String createCustomer() {
		return "CustomerCRUD";
	}
	
	@RequestMapping("/retrieveCustomer")
	public String retrieveCustomer() {
		return "CustomerCRUD";
	}
	
	@RequestMapping("/updateCustomer")
	public String updateCustomer() {
		return "CustomerCRUD";
	}
	
	@RequestMapping("/deleteCustomer")
	public String deleteCustomer() {
		return "CustomerCRUD";
	}
	
	@RequestMapping("/createLoan")
	public String createLoan() {
		return "LoanCRUD";
	}
	
	@RequestMapping("/retrieveLoan")
	public String retrieveLoan() {
		return "LoanCRUD";
	}
	
	@RequestMapping("/updateLoan")
	public String updateLoan() {
		return "LoanCRUD";
	}
	
	@RequestMapping("/deleteLoan")
	public String deleteLoan() {
		return "LoanCRUD";
	}
}
