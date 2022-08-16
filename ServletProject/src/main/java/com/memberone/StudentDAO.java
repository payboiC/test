package com.memberone;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;
import java.util.*;


public class StudentDAO {
	
	DataSource ds;

	private Connection getConnection() {
		
		Connection conn = null;
		
		try {
			
			Context initContext = new InitialContext();

			 ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/myoracle");
			 
			 conn = ds.getConnection();
			
			
		}catch(Exception e) {
			
			System.out.println("Connection 생성 실패....");
			
		}
		
		return conn;
		
	}//디비 연결
	
	//아이디 체크
	public boolean idCheck(String id) {
		
		boolean result = true;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = getConnection();
			
			pstmt = conn.prepareStatement("select * from student where id=?");
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			if(!rs.next()) result = false;
			
		}catch(SQLException s1){
			s1.printStackTrace();
			
		}finally {
			if(rs != null)try{rs.close();}catch(SQLException sq1){}
	    	if(conn != null)try{conn.close();}catch(SQLException sq2){}
	    	if(pstmt != null)try{pstmt.close();}catch(SQLException sq3){}
		}
		return result;//end idCheck
	}
	
	//우편번호를 데이터베이스에서 검색해서 Vector에 저장한 후 리턴해 주는 메소드 구현
	
	public Vector<ZipcodeVO> zipcodeRead(String dong){
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Vector<ZipcodeVO> vecList = new Vector<ZipcodeVO>();
		
		try {
			
			conn = getConnection();
			//쿼리 작성
			String strQuery = "select * from zipcode where dong like '"+dong+"%'";
			pstmt = conn.prepareStatement(strQuery);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ZipcodeVO tempZipcode = new ZipcodeVO();
				tempZipcode.setZipcode(rs.getString("zipcode"));
				tempZipcode.setSido(rs.getString("sido"));
				tempZipcode.setGugun(rs.getString("gugun"));
				tempZipcode.setDong(rs.getString("dong"));
				tempZipcode.setRi(rs.getString("ri"));
				tempZipcode.setBunji(rs.getString("bunji"));
				
				
				vecList.addElement(tempZipcode);
			}
			
		}catch(SQLException s1){
			s1.printStackTrace();
			
		}finally {
			if(rs != null)try{rs.close();}catch(SQLException sq1){}
	    	if(conn != null)try{conn.close();}catch(SQLException sq2){}
	    	if(pstmt != null)try{pstmt.close();}catch(SQLException sq3){}
		}
		
		
		return vecList;
	}
	//end zipcodeRead
	
	
}
