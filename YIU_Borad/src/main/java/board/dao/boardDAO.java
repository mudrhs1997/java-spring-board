package board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import board.vo.boradVO;

public class boardDAO {
	private static boardDAO dao = new boardDAO();
	private boardDAO() {}
	public static boardDAO getInstance() {
		return dao;
	}
	
	public Connection connect(){
		
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/board","root","1234");
			}catch(Exception e) {
				System.out.println("boardDAO connetion error"+e);
			}
		
		return con;
	}
	
	public boolean login(String id, String pwd) {
		
		boolean result = false;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection con = null;
		
		try {
			
			con = connect();
			pstmt = con.prepareStatement("select * from user where id = ? and pwd=? ;");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()) 
			{
				result = true;
			}
			else 
			{
				result = false;
			}
			
			
		}catch(Exception e){
			System.out.println("login error " + e);
		}
		
		return result;
	}
	
	
	public ArrayList<boradVO> mypage(String id) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection con = null;
		
		ArrayList<boradVO> user = new ArrayList<boradVO>();
		
		try {
			
			con = connect();
			pstmt = con.prepareStatement("select name,dip from user where id = "+id+" ;");
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
			String name = rs.getString(1);
			String dip = rs.getString(2);
			
			boradVO User = new boradVO(name, dip);
			user.add(User);
			
			}
			
		}catch(Exception e){
			System.out.println("login error " + e);
		}
		return user;
	}
	

	public void join(boradVO join) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			
			con = connect();
			pstmt = con.prepareStatement("insert into user values(?,?,?,?);");
			pstmt.setString(1, join.getId());
			pstmt.setString(2, join.getPwd());
			pstmt.setString(3, join.getName());
			pstmt.setString(4, join.getDip());
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println(" Join error " + e);
		}
	}
	
	
	public ArrayList<boradVO> list() {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection con = null;
		
		ArrayList<boradVO> list = new ArrayList<boradVO>();
		
		try {
			
			con = connect();
			pstmt = con.prepareStatement("select num,name,title,memo,time,hit from list order by num desc");
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
			int num = rs.getInt(1);
			String name = rs.getString(2);
			String title = rs.getString(3);
			String memo = rs.getString(4);
			String time = rs.getString(5);
			int hit = rs.getInt(6);
			
			boradVO List = new boradVO(num, name, title, memo, time, hit);
			list.add(List);
			
			}
			
		}catch(Exception e){
			System.out.println("list error " + e);
		}
		
		return list;
	}
	public void write(boradVO write) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			
			con = connect();
			pstmt = con.prepareStatement("insert into list(name,title,memo) values(?,?,?);");
			pstmt.setString(1, write.getName());
			pstmt.setString(2, write.getTitle());
			pstmt.setString(3, write.getMemo());
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println(" Write error " + e);
		}
	}
	
	
	public ArrayList<boradVO> view(int num) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Connection con = null;
		
		ArrayList<boradVO> view = new ArrayList<boradVO>();
		
		try {
			
			con = connect();
			pstmt = con.prepareStatement("select name,title,memo,time,hit from list where num="+num+";");
			int hit = 0;
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
			String name = rs.getString(1);
			String title = rs.getString(2);
			String memo = rs.getString(3);
			String time = rs.getString(4);
			hit = rs.getInt(5);
			hit++;
			
			boradVO View = new boradVO(num, name, title, memo, time, hit);
			view.add(View);
			
			}
			
			pstmt = con.prepareStatement("update list set hit="+hit+" where num="+num+";");
			pstmt.executeUpdate();
			
		}catch(Exception e){
			System.out.println("view error " + e);
		}
		
		return view;
	}
	public void update(String retitle, String rememo, int num) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = connect();
			
			pstmt = con.prepareStatement("update list set title =\""+retitle+"\",memo=\""+rememo+"\" where num="+num+";");
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println(" update error " + e);
		}
	}
	public void delete(int num) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = connect();
			
			pstmt = con.prepareStatement("delete from list where num="+num+";");
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			System.out.println(" delete error " + e);
		}
	}
	
	

}
