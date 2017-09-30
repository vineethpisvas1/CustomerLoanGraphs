package com.nucleus.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.nucleus.dao.LoanDAOClass;
import com.nucleus.domain.LoanInfo;

@Service
public class LoanService {

	@Autowired
	LoanDAOClass ldao;

	@Transactional
	public void create(LoanInfo loan) {
		ldao.insert(loan);
	}
	
	@Transactional
	public LoanInfo retrieve(LoanInfo loan) {
		return ldao.retrieve(loan);
	}
	
	@Transactional
	public void update(LoanInfo loan) {
		ldao.update(loan);
	}
	
	@Transactional
	public void delete(LoanInfo loan) {
		ldao.delete(loan);
	}
}
