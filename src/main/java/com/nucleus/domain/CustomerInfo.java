package com.nucleus.domain;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="CustomerLoanCustomers")
public class CustomerInfo {
	@Id
	private int id;
	private String customerName;
	private String address;
	private int pincode;
	private String email;
	private long contactNumber;
	@OneToMany(cascade=CascadeType.ALL,mappedBy="customer")
	private List<LoanInfo> loans;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(long contactNumber) {
		this.contactNumber = contactNumber;
	}
	public List<LoanInfo> getLoans() {
		return loans;
	}
	public void setLoans(List<LoanInfo> loans) {
		this.loans = loans;
	}
}