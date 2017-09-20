package com.ht.service.impl;

import com.ht.dao.HistoryDAO;
import com.ht.pojo.THistory;
import com.ht.service.HistoryService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class HistoryServiceimpl implements HistoryService{

	private HistoryDAO historyDAO;
	public HistoryDAO getHistoryDAO() {
		return historyDAO;
	}

	public void setHistoryDAO(HistoryDAO historyDAO) {
		this.historyDAO = historyDAO;
	}

	
	public THistory queryById(String id) {
		return null;
	}

	
	public void update(THistory t) {
		
	}

	
	public void add(THistory t) {
		historyDAO.add(t);
			
	}

	
	public int count(String column, String ifvalue) {
		return historyDAO.count(column, ifvalue);
	}

	
	public void delete(THistory t) {
		historyDAO.delete(t);
		
	}

	
	public List<THistory> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return historyDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<THistory> historylist() {
		return historyDAO.historylist();
	}

	
	public int pagecount(DetachedCriteria dc) {
		return historyDAO.pagecount(dc);
	}

}
