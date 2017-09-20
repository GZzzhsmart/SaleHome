package com.ht.dao.impl;

import com.ht.dao.GetPrizeDAO;
import com.ht.pojo.TEmployee;
import com.ht.pojo.TGetPrize;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import java.util.List;

public class GetPrizeDAOimpl implements GetPrizeDAO{

	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public TGetPrize queryById(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(TGetPrize.class, id);
	}

	
	public void update(TGetPrize t) {
		Session session = sessionFactory.getCurrentSession();
		Query<TEmployee> query = session.createQuery("update TGetPrize t set t.prizetypeInt ='"+t.getPrizetypeInt()+"'  where t.idString ='"+t.getIdString()+"'");
		query.executeUpdate();
	}

	
	public void add(TGetPrize t) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(t);
		
	}

	
	public int count(String column, String ifvalue) {
		int cnt = 0;
		try {
			Session session = sessionFactory.getCurrentSession();
			DetachedCriteria dc = DetachedCriteria.forClass(TGetPrize.class);
			dc.add(Restrictions.eq(column, ifvalue));
			dc.setProjection(Projections.rowCount());
			Criteria criteria = dc.getExecutableCriteria(session);
			cnt = Integer.parseInt(criteria.uniqueResult().toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}

	
	public void delete(TGetPrize t) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(t);
	}

	
	public List<TGetPrize> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = dc.getExecutableCriteria(session);
		@SuppressWarnings("unchecked")
		List<TGetPrize> list = criteria.setFirstResult(startpage).setMaxResults(pagesize).list();
		return list;
	}

	
	public List<TGetPrize> findlist(String column, String ifvalue) {
		Session session = sessionFactory.getCurrentSession();
		DetachedCriteria dc = DetachedCriteria.forClass(TGetPrize.class);
		dc.add(Restrictions.eq(column,ifvalue));
		Criteria criteria = dc.getExecutableCriteria(session);
		return criteria.list();
	}

}
