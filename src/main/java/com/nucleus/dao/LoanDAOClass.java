package com.nucleus.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nucleus.domain.LoanInfo;

@Repository
public class LoanDAOClass implements LoanDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public boolean insert(LoanInfo loan) {
		sessionFactory.getCurrentSession().persist(loan);
		return true;
	}

	@Override
	public LoanInfo retrieve(LoanInfo loan) {
		
		return null;
	}
	
	@Override
	public List<LoanInfo> retrieveAll() {
		
		return null;
	}
	
	@Override
	public boolean update(LoanInfo loan) {
		
		return true;
	}
	
	@Override
	public boolean delete(LoanInfo loan) {
		
		return true;
	}
}
