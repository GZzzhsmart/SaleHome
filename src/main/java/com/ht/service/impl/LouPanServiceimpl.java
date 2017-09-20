package com.ht.service.impl;

import com.ht.dao.LouPanDAO;
import com.ht.pojo.TBuildings;
import com.ht.service.LouPanService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class LouPanServiceimpl implements LouPanService{

	private LouPanDAO louPanDAO;
	public LouPanDAO getLouPanDAO() {
		return louPanDAO;
	}

	public void setLouPanDAO(LouPanDAO louPanDAO) {
		this.louPanDAO = louPanDAO;
	}

	
	public TBuildings queryById(String id) {
		return louPanDAO.queryById(id);
	}

	
	public void update(TBuildings t) {
		louPanDAO.update(t);
		
	}

	
	public void add(TBuildings t) {
		louPanDAO.add(t);
	}

	
	public int count(String column,String ifvalue) {
		return louPanDAO.count(column, ifvalue);
	}

	
	public List<TBuildings> buildingslist(String column,String ifvalue) {
		// TODO Auto-generated method stub
		return louPanDAO.buildingslist(column,ifvalue);
	}

	
	public void delete(TBuildings t) {
		louPanDAO.delete(t);
		
	}

	
	public List<TBuildings> findloupan(String idString) {
		return louPanDAO.findloupan(idString);
	}

	
	public List<TBuildings> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return louPanDAO.pagelist(dc, startpage, pagesize);
	}

	
	public int count() {
		return louPanDAO.count();
	}

	
	public List<TBuildings> likebuildings(String column, String ifvalue,int startpage,int pagesize) {
		return louPanDAO.likebuildings(column, ifvalue,startpage,pagesize);
	}

	
	public int likecount(String column, String ifvalue) {
		return louPanDAO.likecount(column, ifvalue);
	}

	
	public List<TBuildings> likebuildings(String column, String ifvalue) {
		return louPanDAO.likebuildings(column, ifvalue);
	}

	
	public List<TBuildings> baobiao() {
		return louPanDAO.baobiao();
	}

	
	public List<TBuildings> loupanlist() {
		return louPanDAO.loupanlist();
	}

	
	public int pagecount(DetachedCriteria dc) {
		return louPanDAO.pagecount(dc);
	}

}
