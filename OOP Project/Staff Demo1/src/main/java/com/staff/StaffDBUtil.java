package com.staff;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class StaffDBUtil implements IStaffDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public boolean validate(String staffid) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from details where staffid='"+staffid+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public List<Staff> getStaff(String staffid){
		
		ArrayList<Staff> staff = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from details where staffid='"+staffid+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int staffidn = rs.getInt(1);
				String staffname = rs.getString(2);
				String workdate = rs.getString(3);
				String startwork = rs.getString(4);
				String endwork = rs.getString(5);
				
				Staff stf = new Staff(staffidn, staffname, workdate, startwork,endwork);
				staff.add(stf);
			}
		}
		catch(Exception e ) {
			e.printStackTrace();
		}
		
		return staff;
	}
	
	public boolean shiftcreate(String staffname, String workdate, String startwork, String endwork) {
		
		
		boolean isSuccess = false;
		
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
		    String sql = "insert into details values (0,'"+staffname+"','"+workdate+"','"+startwork+"','"+endwork+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}	
			
		return isSuccess;	
	}
	
	public boolean updateshift(String staffid, String staffname, String workdate, String startwork, String endwork) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update details set staffname='"+staffname+"', workdate='"+workdate+"', startwork='"+startwork+"', endwork='"+endwork+"'" +"where staffid='"+staffid+"'";
					
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	 public List<Staff> getStaffDetails(String staffid){
		 
		 int convertedID = Integer.parseInt(staffid);
		 
		 ArrayList<Staff> stf = new ArrayList<>();
		 
		 try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from details where staffid='"+convertedID+"' ";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int staffidn = rs.getInt(1);
				String staffname = rs.getString(2);
				String workdate = rs.getString(3);
				String startwork = rs.getString(4);
				String endwork = rs.getString(5);
				
				Staff s = new Staff(staffidn,staffname,workdate,startwork,endwork);
				stf.add(s);
			}
		 }
		 
		 catch(Exception e) {
			 e.printStackTrace();
		 }
		 
		 return stf;
		 
	 }
    
	 public boolean deleteshift(String staffid) {
		 
		 int convstaffid = Integer.parseInt(staffid);
		 
		 try {
			 
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 String sql = "delete from details where staffid= '"+convstaffid+"'";
			 int r = stmt.executeUpdate(sql);
			 
			 if (r > 0) {
				 isSuccess = true;
			 }
			 else {
				 isSuccess = false;
			 }
			 
		 }
		 
		 catch (Exception e) {
			 e.printStackTrace();
		 }
		 
		 return isSuccess;
	 } 
	 
	 
	 
	 
	 
	 
	 
}		
		
		
		

