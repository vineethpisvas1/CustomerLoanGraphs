package com.nucleus.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nucleus.domain.CustomerInfo;

@Repository
public class CustomerDAOClass implements CustomerDAO{
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public boolean insert(CustomerInfo customer) {
		sessionFactory.getCurrentSession().persist(customer);
		return true;
	}

	@Override
	public CustomerInfo retrieve(CustomerInfo customer) {
		return null;
	}
	
	@Override
	public List<CustomerInfo> retrieveAll() {
		return null;
	}
	
	@Override
	public void update(CustomerInfo customer) {
		
	}
	
	@Override
	public boolean delete(CustomerInfo customer) {
		
		return true;
	}
}
