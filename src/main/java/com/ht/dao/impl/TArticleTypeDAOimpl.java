package com.ht.dao.impl;

import com.ht.dao.TArticleTypeDAO;
import com.ht.pojo.TArticleType;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;

import java.util.List;

public class TArticleTypeDAOimpl implements TArticleTypeDAO{

	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public TArticleType queryById(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(TArticleType.class, id);
	}

	
	public void update(TArticleType t) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(t);
		
	}

	
	public void add(TArticleType t) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(t);
		
	}

	
	public int count(String column, String ifvalue) {
		Session session = sessionFactory.getCurrentSession();
		DetachedCriteria dc = DetachedCriteria.forClass(TArticleType.class);
		dc.setProjection(Projections.rowCount());
		Criteria criteria = dc.getExecutableCriteria(session);
		return Integer.parseInt(criteria.uniqueResult().toString());
	}

	
	public void delete(TArticleType t) {
		Session session =sessionFactory.getCurrentSession();
		session.delete(t);
		
	}

	
	public List<TArticleType> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = dc.getExecutableCriteria(session);
		List<TArticleType> list = criteria.setFirstResult(startpage).setMaxResults(pagesize).list();
		return list;
	}

	
	public List<TArticleType> findtype() {
		Session session = sessionFactory.getCurrentSession();
		DetachedCriteria dc = DetachedCriteria.forClass(TArticleType.class);
		Criteria criteria = dc.getExecutableCriteria(session);
		return criteria.list();
	}

}
