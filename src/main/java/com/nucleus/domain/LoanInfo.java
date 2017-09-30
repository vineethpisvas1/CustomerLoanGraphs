package com.nucleus.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="CustomerLoanLoans")
public class LoanInfo {
	@Id
	private String id;
	private int loanAmount;
	private double tenure;
	@ManyToOne
	private CustomerInfo customer;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getLoanAmount() {
		return loanAmount;
	}
	public void setLoanAmount(int loanAmount) {
		this.loanAmount = loanAmount;
	}
	public double getTenure() {
		return tenure;
	}
	public void setTenure(double tenure) {
		this.tenure = tenure;
	}
}