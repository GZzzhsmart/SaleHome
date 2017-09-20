package com.ht.dao.impl;

import com.ht.dao.CustomerDAO;
import com.ht.pojo.TCustomer;
import com.ht.pojo.TUser;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class CustomerDAOimpl implements CustomerDAO{

	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public TCustomer queryById(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(TCustomer.class, id);
	}

	
	public void update(TCustomer t) {
		Session session = sessionFactory.getCurrentSession();
		Query<TUser> query = session.createQuery("update TCustomer t set t.statusInt='"+t.getStatusInt()+"'  where t.idString ='"+t.getIdString()+"'");
		query.executeUpdate();
	}

	
	public void add(TCustomer t) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(t);
		
	}

	
	public int count(String column, String ifvalue) {
		Session session = sessionFactory.getCurrentSession();
		DetachedCriteria dc = DetachedCriteria.forClass(TCustomer.class);
		dc.setProjection(Projections.rowCount());
		dc.add(Restrictions.eq(column,ifvalue));
		Criteria criteria = dc.getExecutableCriteria(session);
		return Integer.parseInt(criteria.uniqueResult().toString());
	}

	
	public void delete(TCustomer t) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(t);
	}

	
	public List<TCustomer> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = dc.getExecutableCriteria(session);
		List<TCustomer> list = criteria.setFirstResult(startpage).setMaxResults(pagesize).list();
		return list;
	}

	
	public List<TCustomer> findcustor(String column, String ifvalue) {
		Session session = sessionFactory.getCurrentSession();
		DetachedCriteria dc = DetachedCriteria.forClass(TCustomer.class);
		dc.add(Restrictions.eq(column,ifvalue));
		Criteria criteria = dc.getExecutableCriteria(session);
		@SuppressWarnings("unchecked")
		List<TCustomer> list = criteria.list();
		return list;

	}

	
	public void buyhouse(TCustomer t) {
		Session session = sessionFactory.getCurrentSession();
		Query<TUser> query = session.createQuery("update TCustomer t set t.customerTypeInt='"+t.getCustomerTypeInt()+"'  where t.idString ='"+t.getIdString()+"'");
		query.executeUpdate();
		
	}
	
	
	public void upfact(TCustomer t) {
		Session session = sessionFactory.getCurrentSession();
		Query<TCustomer> query = session.createQuery("update TCustomer t set t.contractString ='"+t.getContractString()+"'  where t.idString ='"+t.getIdString()+"'");
		query.executeUpdate();
		
	}

	
	public List<TCustomer> addcomment(DetachedCriteria dc) {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = dc.getExecutableCriteria(session);
		return criteria.list();
	}

}
