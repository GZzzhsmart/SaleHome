package com.ht.service.impl;

import com.ht.dao.EmployeeDAO;
import com.ht.pojo.TEmployee;
import com.ht.service.EmployeeService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class EmployeeServiceimpl implements EmployeeService{

	private EmployeeDAO employeeDAO;
	public EmployeeDAO getEmployeeDAO() {
		return employeeDAO;
	}

	public void setEmployeeDAO(EmployeeDAO employeeDAO) {
		this.employeeDAO = employeeDAO;
	}

	
	public TEmployee queryById(String id) {
		return employeeDAO.queryById(id);
	}

	
	public void update(TEmployee t) {
		employeeDAO.update(t);
		
	}

	
	public void add(TEmployee t) {
		employeeDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return employeeDAO.count(column, ifvalue);
	}

	
	public void delete(TEmployee t) {
		employeeDAO.delete(t);
		
	}

	
	public List<TEmployee> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return employeeDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TEmployee> empList(String column, String ifvalue) {
		return employeeDAO.empList(column, ifvalue);
	}

	
	public void updateinfo(TEmployee t) {
		employeeDAO.updateinfo(t);
		
	}

	
	public void updatestatus(TEmployee t) {
		employeeDAO.updatestatus(t);
		
	}

	
	public void updateemployee(TEmployee t) {
		employeeDAO.updateemployee(t);
	}

}
