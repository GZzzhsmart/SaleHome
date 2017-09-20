package com.ht.dao.impl;

import com.ht.dao.ArticleDAO;
import com.ht.pojo.TArticle;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class ArticleDAOimpl implements ArticleDAO{

	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public TArticle queryById(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(TArticle.class, id);
	}

	
	public void update(TArticle t) {
		Session session = sessionFactory.getCurrentSession();
		Query<TArticle> query = session.createQuery("update TArticle t set t.logoString ='"+t.getLogoString()+"',t.createdTime =now(),t.titleString ='"+t.getTitleString()+"',t.abstractsString ='"+t.getAbstractsString()+"',t.publicusernameString ='"+t.getPublicusernameString()+"',t.typeInt ='"+t.getTypeInt()+"',t.contentString ='"+t.getContentString()+"'  where t.idString ='"+t.getIdString()+"'");
		query.executeUpdate();

	}

	
	public void add(TArticle t) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(t);
		
	}

	
	public int count(String column, String ifvalue) {
		Session session = sessionFactory.getCurrentSession();
		DetachedCriteria dc = DetachedCriteria.forClass(TArticle.class);
		dc.setProjection(Projections.rowCount());
		dc.add(Restrictions.eq(column,ifvalue));
		Criteria criteria = dc.getExecutableCriteria(session);
		return Integer.parseInt(criteria.uniqueResult().toString());
	}

	
	public void delete(TArticle t) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(t);
	}

	
	public List<TArticle> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = dc.getExecutableCriteria(session);
		List<TArticle> list = criteria.setFirstResult(startpage).setMaxResults(pagesize).list();
		return list;
	}

	
	public List<TArticle> findwzlist(String column, String ifvalue) {
		Session session = sessionFactory.getCurrentSession();
		DetachedCriteria dc = DetachedCriteria.forClass(TArticle.class);
		dc.add(Restrictions.eq(column,ifvalue));
		Criteria criteria = dc.getExecutableCriteria(session);
		List<TArticle> list = criteria.list();
		return list;
	}

	
	public int articlesize() {
		Session session = sessionFactory.getCurrentSession();
		DetachedCriteria dc = DetachedCriteria.forClass(TArticle.class);
		dc.setProjection(Projections.rowCount());
		Criteria criteria = dc.getExecutableCriteria(session);
		return Integer.parseInt(criteria.uniqueResult().toString());
	}

	
	public void updatearticlestatus(TArticle t) {
		Session session = sessionFactory.getCurrentSession();
		Query<TArticle> query = session.createQuery("update TArticle t set t.statusInt ='"+t.getStatusInt()+"'  where t.idString ='"+t.getIdString()+"'");
		query.executeUpdate();
		
	}

	
	public List<TArticle> facetaricle() {
		Session session = sessionFactory.getCurrentSession();
		DetachedCriteria dc = DetachedCriteria.forClass(TArticle.class);
		dc.add(Restrictions.eq("statusInt", 1));
		dc.addOrder(Order.desc("createdTime"));
		Criteria criteria = dc.getExecutableCriteria(session).setFirstResult(0).setMaxResults(2);
		@SuppressWarnings("unchecked")
		List<TArticle> list = criteria.list();
		return list;
	}
}
