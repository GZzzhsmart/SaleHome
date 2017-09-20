package com.ht.service.impl;

import com.ht.dao.UserPrizeDAO;
import com.ht.pojo.TUserprize;
import com.ht.service.UserPrizeService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class UserPrizeServiceimpl implements UserPrizeService{

	private UserPrizeDAO userPrizeDAO;
	public UserPrizeDAO getUserPrizeDAO() {
		return userPrizeDAO;
	}

	public void setUserPrizeDAO(UserPrizeDAO userPrizeDAO) {
		this.userPrizeDAO = userPrizeDAO;
	}

	
	public TUserprize queryById(String id) {
		return userPrizeDAO.queryById(id);
	}

	
	public void update(TUserprize t) {
		userPrizeDAO.update(t);
	}

	
	public void add(TUserprize t) {
		userPrizeDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return userPrizeDAO.count(column, ifvalue);
	}

	
	public void delete(TUserprize t) {
		userPrizeDAO.delete(t);
		
	}

	
	public List<TUserprize> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return userPrizeDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TUserprize> finduserprize(String column, String ifvalue) {
		return userPrizeDAO.finduserprize(column, ifvalue);
	}

	
	public double salary(String employeeid) {
		return userPrizeDAO.salary(employeeid);
	}

}
