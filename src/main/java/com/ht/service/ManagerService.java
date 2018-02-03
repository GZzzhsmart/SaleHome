package com.ht.service;

import java.util.List;

import com.ht.pojo.TManager;

public interface ManagerService extends BaseService<String,TManager>{

	public abstract   List<TManager> managerList(String colum,String ifvalue);

	public abstract   List<TManager> findManager(String colum,String ifvalue);

	public abstract  void updateManager(TManager manager);
	
	public abstract  void  updatepwd(TManager manager);
	
	public abstract void updatestatus(TManager manager);

}
