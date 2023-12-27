package com.staff;

public class Staff {
	
	private int staffid ;
	private String staffname;
	private String workdate;
	private String startwork;
	private String endwork;
	
	
	public Staff(int staffid, String staffname, String workdate, String startwork, String endwork) {
		this.staffid = staffid;
		this.staffname = staffname;
		this.workdate = workdate;
		this.startwork = startwork;
		this.endwork = endwork;
	}


	public int getStaffid() {
		return staffid;
	}


	public String getStaffname() {
		return staffname;
	}


	public String getWorkdate() {
		return workdate;
	}


	public String getStartwork() {
		return startwork;
	}


	public String getEndwork() {
		return endwork;
	}


	
	
	
	
	
	
	

}
