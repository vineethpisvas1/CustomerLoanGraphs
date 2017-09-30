package com.nucleus.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.nucleus.dao.CustomerDAOClass;
import com.nucleus.domain.CustomerInfo;

@Service
public class CustomerService {
	
	@Autowired
	CustomerDAOClass cdao;

	@Transactional
	public void create(CustomerInfo customer) {
		cdao.insert(customer);
	}
	
	@Transactional
	public CustomerInfo retrieve(CustomerInfo customer) {
		return cdao.retrieve(customer);
	}
	
	@Transactional
	public void update(CustomerInfo customer) {
		cdao.update(customer);
	}
	
	@Transactional
	public void delete(CustomerInfo customer) {
		cdao.delete(customer);
	}
}