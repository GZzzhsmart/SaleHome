package com.ht.service.impl;

import com.ht.dao.AppointmentDAO;
import com.ht.pojo.TAppointment;
import com.ht.service.AppointmentService;
import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public class AppointmentServiceimpl implements AppointmentService{

	private AppointmentDAO appointmentDAO;
	public AppointmentDAO getAppointmentDAO() {
		return appointmentDAO;
	}

	public void setAppointmentDAO(AppointmentDAO appointmentDAO) {
		this.appointmentDAO = appointmentDAO;
	}

	
	public TAppointment queryById(String id) {
		return appointmentDAO.queryById(id);
	}

	
	public void update(TAppointment t) {
		appointmentDAO.update(t);
		
	}

	
	public void add(TAppointment t) {
		appointmentDAO.add(t);
		
	}

	
	public int count(String column, String ifvalue) {
		return appointmentDAO.count(column, ifvalue);
	}

	
	public void delete(TAppointment t) {
		appointmentDAO.delete(t);
		
	}

	
	public List<TAppointment> pagelist(DetachedCriteria dc, int startpage, int pagesize) {
		return appointmentDAO.pagelist(dc, startpage, pagesize);
	}

	
	public List<TAppointment> appointmentlist(String column, String ifvalue) {
		return appointmentDAO.appointmentlist(column, ifvalue);
	}

	
	public void updatestatus(TAppointment appointment) {
		appointmentDAO.updatestatus(appointment);
		
	}

	
	public void updateuserstatus(TAppointment appointment) {
		appointmentDAO.updateuserstatus(appointment);
		
	}

	
	public int buyhousecount(String userid, int appstatus) {
		return appointmentDAO.buyhousecount(userid, appstatus);
	}

}
