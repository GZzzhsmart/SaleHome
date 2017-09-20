package com.ht.service.impl;

import com.ht.dao.LikeDAO;
import com.ht.pojo.TLike;
import com.ht.service.LikeService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class LikeServiceimpl implements LikeService{

	private LikeDAO likeDAO;
	public LikeDAO getLikeDAO() {
		return likeDAO;
	}

	public void setLikeDAO(LikeDAO likeDAO) {
		this.likeDAO = likeDAO;
	}

	
	public TLike queryById(String id) {
		return null;
	}

	
	public void update(TLike t) {
		
		likeDAO.update(t);
		
	}

	
	public void add(TLike t) {
		likeDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return likeDAO.count(column, ifvalue);
	}

	
	public void delete(TLike t) {
		likeDAO.delete(t);
		
	}

	
	public List<TLike> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return likeDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TLike> likelist(String column, String ifvalue) {
		return likeDAO.likelist(column, ifvalue);
	}

	
	public List<TLike> baobiao() {
		return likeDAO.baobiao();
	}

}
