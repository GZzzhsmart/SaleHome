package com.ht.service.impl;

import com.ht.dao.TAgencyDAO;
import com.ht.pojo.TAgency;
import com.ht.service.TAgencyService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class TAgencyServiceimpl implements TAgencyService {

	private TAgencyDAO tAgencyDAO;
	public TAgencyDAO gettAgencyDAO() {
		return tAgencyDAO;
	}

	public void settAgencyDAO(TAgencyDAO tAgencyDAO) {
		this.tAgencyDAO = tAgencyDAO;
	}

	
	public TAgency queryById(String id) {
		return tAgencyDAO.queryById(id);
	}

	
	public void update(TAgency t) {
		tAgencyDAO.update(t);
		
	}

	
	public void add(TAgency t) {
		tAgencyDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return tAgencyDAO.count(column, ifvalue);
	}

	
	public void delete(TAgency t) {
		tAgencyDAO.delete(t);
		
	}

	
	public List<TAgency> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return tAgencyDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TAgency> tagencylist(String column, String ifvalue) {
		return tAgencyDAO.tagencylist(column, ifvalue);
	}

	
	public void changestatus(String column, String ifvalue, String id) {
		tAgencyDAO.changestatus(column, ifvalue, id);
		
	}

	
	public void shenhe(TAgency tAgency) {
		tAgencyDAO.shenhe(tAgency);
		
	}

	
	public int likecount(String starttime, String endtime, String name) {
		return tAgencyDAO.likecount(starttime, endtime, name);
	}

	
	public void updatelogo(TAgency t) {
		tAgencyDAO.updatelogo(t);
		
	}

	
	public void updatetagency(TAgency t) {
		tAgencyDAO.updatetagency(t);
		
	}

}
