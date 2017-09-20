package com.ht.dao.impl;

import com.ht.dao.CommentDAO;
import com.ht.pojo.TArticle;
import com.ht.pojo.TComment;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class CommentDAOimpl implements CommentDAO{

	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public TComment queryById(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(TComment.class, id);
	}

	
	public void update(TComment t) {
		Session session = sessionFactory.getCurrentSession();
		Query<TArticle> query = session.createQuery("update TComment t set t.status ='"+t.getStatus()+"'  where t.idString ='"+t.getIdString()+"'");
		query.executeUpdate();
	}

	
	public void add(TComment t) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(t);
		
	}

	
	public int count(String column, String ifvalue) {
		Session session = sessionFactory.getCurrentSession();
		DetachedCriteria dc = DetachedCriteria.forClass(TComment.class);
		dc.setProjection(Projections.rowCount());
		dc.add(Restrictions.eq(column,ifvalue));
		Criteria criteria = dc.getExecutableCriteria(session);
		return Integer.parseInt(criteria.uniqueResult().toString());
	}

	
	public void delete(TComment t) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(t);
	}

	
	public List<TComment> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = dc.getExecutableCriteria(session);
		@SuppressWarnings("unchecked")
		List<TComment> list = criteria.setFirstResult(startpage).setMaxResults(pagesize).list();
		return list;
	}

	@SuppressWarnings("unchecked")
	
	public List<TComment> findcomment(String column, String ifvalue) {
		Session session = sessionFactory.getCurrentSession();
		DetachedCriteria dc = DetachedCriteria.forClass(TComment.class);
		dc.add(Restrictions.eq(column,ifvalue));
		Criteria criteria = dc.getExecutableCriteria(session);
		return criteria.list();
	}

}
