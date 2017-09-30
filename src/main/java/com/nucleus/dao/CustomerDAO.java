package com.nucleus.dao;

import java.util.List;
import com.nucleus.domain.CustomerInfo;

public interface CustomerDAO {
	public boolean insert(CustomerInfo customer);
	public boolean delete(CustomerInfo customer);
	public CustomerInfo retrieve(CustomerInfo customer);
	public void update(CustomerInfo customer);
	public List<CustomerInfo> retrieveAll();
}
