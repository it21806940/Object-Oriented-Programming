package com.staff;

import java.util.List;

public interface IStaffDBUtil {
	
	public boolean validate(String staffid) ;
	
	public List<Staff> getStaff(String staffid);
	
	public boolean shiftcreate(String staffname, String workdate, String startwork, String endwork);
	
	public boolean updateshift(String staffid, String staffname, String workdate, String startwork, String endwork);
    
	public List<Staff> getStaffDetails(String staffid);
	
	public boolean deleteshift(String staffid);
	
	
}
