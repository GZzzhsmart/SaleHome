package com.ht.service.impl;

import com.ht.dao.ArticleDAO;
import com.ht.pojo.TArticle;
import com.ht.service.ArticleService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class ArticleServiceimpl implements ArticleService{

	private ArticleDAO articleDAO;
	public ArticleDAO getArticleDAO() {
		return articleDAO;
	}

	public void setArticleDAO(ArticleDAO articleDAO) {
		this.articleDAO = articleDAO;
	}

	
	public TArticle queryById(String id) {
		return articleDAO.queryById(id);
	}

	
	public void update(TArticle t) {
		articleDAO.update(t);
		
	}

	
	public void add(TArticle t) {
		articleDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return articleDAO.count(column, ifvalue);
	}

	
	public void delete(TArticle t) {
		articleDAO.delete(t);
		
	}

	
	public List<TArticle> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return articleDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TArticle> findwzlist(String colomn, String ifvalue) {
		return articleDAO.findwzlist(colomn, ifvalue);
	}

	
	public int articlesize() {
		return articleDAO.articlesize();
	}

	
	public void updatearticlestatus(TArticle t) {
		articleDAO.updatearticlestatus(t);
		
	}

	
	public List<TArticle> facetaricle() {
		return articleDAO.facetaricle();
	}

}
