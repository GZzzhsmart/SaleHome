package com.ht.service.impl;

import com.ht.dao.ManagerDAO;
import com.ht.pojo.TManager;
import com.ht.service.ManagerService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class ManagerServiceimpl implements ManagerService{

	private ManagerDAO managerDAO;
	public ManagerDAO getManagerDAO() {
		return managerDAO;
	}

	public void setManagerDAO(ManagerDAO managerDAO) {
		this.managerDAO = managerDAO;
	}

	
	public TManager queryById(String id) {
		return managerDAO.queryById(id);
	}

	
	public void update(TManager t) {
		managerDAO.update(t);
		
	}

	
	public void add(TManager t) {
		managerDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return managerDAO.count(column, ifvalue);
	}

	
	public void delete(TManager t) {
		managerDAO.delete(t);
		
	}

	
	public List<TManager> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return managerDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TManager> managerList(String colum, String ifvalue) {
		return managerDAO.managerList(colum, ifvalue);
	}

	
	public List<TManager> findManager(String colum, String ifvalue) {
		return managerDAO.findManager(colum, ifvalue);
	}

	
	public void updateManager(TManager manager) {
		managerDAO.updateManager(manager);
		
	}

	
	public void updatepwd(TManager manager) {
		managerDAO.updatepwd(manager);
	}

	
	public void updatestatus(TManager manager) {
		managerDAO.updatestatus(manager);
		
	}

}
