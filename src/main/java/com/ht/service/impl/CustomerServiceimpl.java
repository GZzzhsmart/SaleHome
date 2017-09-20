package com.ht.service.impl;

import com.ht.dao.CustomerDAO;
import com.ht.pojo.TCustomer;
import com.ht.service.CustomerService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class CustomerServiceimpl implements CustomerService{

	private CustomerDAO customerDAO;
	public CustomerDAO getCustomerDAO() {
		return customerDAO;
	}

	public void setCustomerDAO(CustomerDAO customerDAO) {
		this.customerDAO = customerDAO;
	}

	
	public TCustomer queryById(String id) {
		return customerDAO.queryById(id);
	}

	
	public void update(TCustomer t) {
		customerDAO.update(t);
		
	}

	
	public void add(TCustomer t) {
		customerDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return customerDAO.count(column, ifvalue);
	}

	
	public void delete(TCustomer t) {
		customerDAO.delete(t);
		
	}

	
	public List<TCustomer> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return customerDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TCustomer> findcustor(String column, String ifvalue) {
		return customerDAO.findcustor(column, ifvalue);
	}

	
	public void buyhouse(TCustomer t) {
		customerDAO.buyhouse(t);
		
	}

	
	public void upfact(TCustomer t) {
		customerDAO.upfact(t);
		
	}

	
	public List<TCustomer> addcomment(DetachedCriteria dc) {
		return customerDAO.addcomment(dc);
	}

}
