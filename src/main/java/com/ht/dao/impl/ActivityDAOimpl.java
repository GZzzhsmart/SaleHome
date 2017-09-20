package com.ht.dao.impl;

import com.ht.dao.ActivityDAO;
import com.ht.pojo.TActivity;
import com.ht.pojo.TAppointment;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import java.util.List;

@SuppressWarnings("deprecation")
public class ActivityDAOimpl implements ActivityDAO{

	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public TActivity queryById(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(TActivity.class, id);
	}

	
	public void update(TActivity t) {
		Session session = sessionFactory.getCurrentSession();
		Query<TAppointment> query = session.createQuery("update TActivity t set t.statusInt ='"+t.getStatusInt()+"'  where t.idString ='"+t.getIdString()+"'");
		query.executeUpdate();
	}

	
	public void add(TActivity t) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(t);
		
	}

	
	public int count(String column, String ifvalue) {
		Session session = sessionFactory.getCurrentSession();
		DetachedCriteria dc = DetachedCriteria.forClass(TActivity.class);
		dc.setProjection(Projections.rowCount());
		dc.add(Restrictions.eq(column,ifvalue));
		Criteria criteria = dc.getExecutableCriteria(session);
		return Integer.parseInt(criteria.uniqueResult().toString());
	}

	
	public void delete(TActivity t) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(t);
	}

	
	public List<TActivity> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = dc.getExecutableCriteria(session);
		@SuppressWarnings("unchecked")
		List<TActivity> list = criteria.setFirstResult(startpage).setMaxResults(pagesize).list();
		return list;
	}

	@SuppressWarnings("unchecked")
	
	public List<TActivity> findactivity(String column, String ifvalue) {
		Session session = sessionFactory.getCurrentSession();
		DetachedCriteria dc = DetachedCriteria.forClass(TActivity.class);
		dc.add(Restrictions.eq(column,ifvalue));
		Criteria criteria = dc.getExecutableCriteria(session);
		return criteria.list();
	}

}
