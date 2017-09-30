package com.nucleus.dao;

import java.util.List;
import com.nucleus.domain.LoanInfo;

public interface LoanDAO {
	boolean delete(LoanInfo loan);
	boolean update(LoanInfo loan);
	List<LoanInfo> retrieveAll();
	LoanInfo retrieve(LoanInfo loan);
	boolean insert(LoanInfo loan);
}
