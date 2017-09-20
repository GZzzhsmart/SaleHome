package com.ht.service.impl;

import com.ht.dao.ActivityDAO;
import com.ht.pojo.TActivity;
import com.ht.service.ActivityService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class ActivityServiceimpl implements ActivityService{

	private ActivityDAO activityDAO;
	public ActivityDAO getActivityDAO() {
		return activityDAO;
	}

	public void setActivityDAO(ActivityDAO activityDAO) {
		this.activityDAO = activityDAO;
	}

	
	public TActivity queryById(String id) {
		return activityDAO.queryById(id);
	}

	
	public void update(TActivity t) {
		activityDAO.update(t);
		
	}

	
	public void add(TActivity t) {
		activityDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return activityDAO.count(column, ifvalue);
	}

	
	public void delete(TActivity t) {
		activityDAO.delete(t);
		
	}

	
	public List<TActivity> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return activityDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TActivity> findactivity(String column, String ifvalue) {
		return activityDAO.findactivity(column, ifvalue);
	}

}
