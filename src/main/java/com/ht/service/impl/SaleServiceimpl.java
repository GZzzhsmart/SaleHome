package com.ht.service.impl;

import com.ht.dao.SaleDAO;
import com.ht.pojo.TSale;
import com.ht.service.SaleService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class SaleServiceimpl implements SaleService{

	private SaleDAO saleDAO;
	public SaleDAO getSaleDAO() {
		return saleDAO;
	}

	public void setSaleDAO(SaleDAO saleDAO) {
		this.saleDAO = saleDAO;
	}

	
	public TSale queryById(String id) {
		return saleDAO.queryById(id);
	}

	
	public void update(TSale t) {
		saleDAO.update(t);
		
	}

	
	public void add(TSale t) {
		saleDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return saleDAO.count(column, ifvalue);
	}

	
	public void delete(TSale t) {
		saleDAO.delete(t);
		
	}

	
	public List<TSale> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return saleDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TSale> findsale(String column, String ifvalue) {
		return saleDAO.findsale(column, ifvalue);
	}

	
	public void shenhe(TSale sale) {
		saleDAO.shenhe(sale);
		
	}

	
	public int count() {
		return saleDAO.count();
	}

	
	public List<TSale> baobiaolist() {
		return saleDAO.baobiaolist();
	}

}
