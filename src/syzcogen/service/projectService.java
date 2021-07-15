package syzcogen.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import syzcogen.model.Projects;
import syzcogen.util.DBConnectionUtil;

public class projectService implements projectServiceInterface{

	private Connection conn = DBConnectionUtil.getDBConnection();
	private Statement stmt;
	private boolean success = false;
	private String sql;

	private Logger exceptionLog = Logger.getLogger("exceptionLog.txt");
	
	@Override
	public boolean addproject(Projects pro) {
		
		try {
		Statement stmt;
		stmt = conn.createStatement();	
		sql = "insert into project_details values('"+pro.getpId()+"','"+pro.getpTitle()+"','"+pro.getpOwner()+"',"
				+ ""+ "'"+pro.getsDate()+"','"+pro.geteDate()+"','"+pro.getDline()+"','"+pro.getTasks()+"',"
						+ "'"+pro.getCrew()+"','"+pro.getaBudget()+"','"+pro.getaBudget()+"','"+pro.getReso()+"',"
								+ "'"+pro.getStat()+"','"+pro.getInfo()+"')";
		
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			success = true;
		}
		else {
			success = false;
		}
		
		}catch(SQLException e) {
			exceptionLog.log(Level.SEVERE, e.getMessage());
		
		}finally {
			try {
				if(conn != null) {
					conn.close();
				}
			}catch(SQLException e) {
				exceptionLog.log(Level.SEVERE, e.getMessage());
			}
		}
		
		return success;
	}

	/*@Override
	public ArrayList<Projects> getProjectDetails(){
		sql = "select * from project_details";
		return getProDetails();
		
	}*/
		
	public ArrayList<Projects> getProjectDetails(){
		sql = "select * from project_details";
		ArrayList<Projects> proList = new ArrayList<Projects>();
		
		try {
			stmt = conn.createStatement();
			ResultSet rst = stmt.executeQuery(sql);
			
		while(rst.next()) {
			Projects pro  = new Projects();
			pro.setpId(rst.getString(1));
			pro.setpTitle(rst.getString(2));
			pro.setpOwner(rst.getString(3));
			pro.setsDate(rst.getDate(4));
			pro.seteDate(rst.getDate(5));
			pro.setDline(rst.getDate(6));
			pro.setTasks(rst.getString(7));
			pro.setCrew(rst.getInt(8));
			pro.seteBudget(rst.getDouble(9));
			pro.setaBudget(rst.getDouble(10));
			pro.setReso(rst.getString(11));
			pro.setStat(rst.getString(12));
			pro.setInfo(rst.getString(13));
			
			proList.add(pro);
			
		}
		
	}catch(SQLException e){
		exceptionLog.log(Level.SEVERE,e.getMessage());
	
	}finally {
		
		try {
			if(conn != null) {
				conn.close();
			}
		}catch(SQLException e) {
			exceptionLog.log(Level.SEVERE,e.getMessage());
		}
	}
	return proList;

	}

	public Projects getProjectDetailsById(String pId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteProject(String pId) {

		try {
			stmt = conn.createStatement();
			String sql = "delete from project_details where projectId = '"+pId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				success = true;
			}
		}catch(SQLException e) {
			exceptionLog.log(Level.SEVERE, e.getMessage());
		
		}finally {
			try {
				if (conn != null) {
					conn.close();
			}
		}catch (SQLException e) {
			exceptionLog.log(Level.SEVERE, e.getMessage());	
		}
		return success;
	}
}
}

