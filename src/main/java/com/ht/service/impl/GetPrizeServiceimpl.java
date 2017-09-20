package com.ht.service.impl;

import com.ht.dao.GetPrizeDAO;
import com.ht.pojo.TGetPrize;
import com.ht.service.GetPrizeService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class GetPrizeServiceimpl implements GetPrizeService{

	private GetPrizeDAO getPrizeDAO;
	public GetPrizeDAO getGetPrizeDAO() {
		return getPrizeDAO;
	}

	public void setGetPrizeDAO(GetPrizeDAO getPrizeDAO) {
		this.getPrizeDAO = getPrizeDAO;
	}

	
	public TGetPrize queryById(String id) {
		return getPrizeDAO.queryById(id);
	}

	
	public void update(TGetPrize t) {
		getPrizeDAO.update(t);
	}

	
	public void add(TGetPrize t) {
		getPrizeDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return getPrizeDAO.count(column, ifvalue);
	}

	
	public void delete(TGetPrize t) {
		getPrizeDAO.delete(t);
	}

	
	public List<TGetPrize> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return getPrizeDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TGetPrize> findlist(String column, String ifvalue) {
		return getPrizeDAO.findlist(column, ifvalue);
	}

	
}
