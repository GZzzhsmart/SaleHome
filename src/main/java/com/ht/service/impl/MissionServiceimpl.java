package com.ht.service.impl;

import com.ht.dao.MissionDAO;
import com.ht.pojo.TMission;
import com.ht.service.MissionService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class MissionServiceimpl implements MissionService{

	public MissionDAO getMissionDAO() {
		return missionDAO;
	}

	public void setMissionDAO(MissionDAO missionDAO) {
		this.missionDAO = missionDAO;
	}

	private MissionDAO missionDAO;

	
	public TMission queryById(String id) {
		return missionDAO.queryById(id);
	}

	
	public void update(TMission t) {
		missionDAO.update(t);
		
	}

	
	public void add(TMission t) {
		missionDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return missionDAO.count(column, ifvalue);
	}

	
	public void delete(TMission t) {
		missionDAO.delete(t);
		
	}

	
	public List<TMission> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return missionDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TMission> findmission(String column, String ifvalue) {
		return missionDAO.findmission(column, ifvalue);
	}

	
	public void updatelastquentity(TMission t) {
		missionDAO.updatelastquentity(t);
		
	}
}
