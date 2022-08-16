package com.jdbc;
import java.sql.*;
import java.util.*;
import com.jdbc.*;

public class TempMemberDAO{

	private final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:orcl";
	private final String USER = "scott";
	private final String PASS = "tiger";
	
	public TempMemberDAO() {
		
		try {
			
			
			Class.forName(JDBC_DRIVER);
			
		}catch (Exception e) {
			
			System.out.println("Error : JDBC 드라이버 로딩 실패!!!!!!!!!!");
			
		}

	}
	public Vector<TempMemberVO> getMemberlist(){
		Connection conn = null;
	    Statement stmt = null;
	    ResultSet rs = null;
	    
	    Vector<TempMemberVO> vecList = new Vector<TempMemberVO>();
	    
	    try {
	    	
	    	conn = DriverManager.getConnection(JDBC_URL,USER,PASS);
	    	
	    	String strQuery="select * from tempmember";
	    	stmt = conn.createStatement();
	        rs = stmt.executeQuery(strQuery);
	        
	        
	        while(rs.next()){
	        	
	        	TempMemberVO vo = new TempMemberVO();
	        	vo.setId(rs.getString("id"));
	        	vo.setPasswd(rs.getString("passwd"));
	    		 vo.setName(rs.getString("name"));
	    		 vo.setMem_num1(rs.getString("mem_num1"));
	    		 vo.setMem_num2(rs.getString("mem_num2"));
	    		 vo.setE_mail(rs.getString("e_mail"));
	    		 vo.setPhone(rs.getString("phone"));
	    		 vo.setZipcode(rs.getString("zipcode"));
	    		 vo.setAddress(rs.getString("address"));
	    		 vo.setJob(rs.getString("job"));
	    		 
	    		 vecList.add(vo);
	        }
	        
	        
	        
	        
	    	
	    }catch(SQLException ss){
	    	System.out.println("sql Exception...");}
	    catch(Exception e){
	    	System.out.println("Exception...");}
	    finally{
	    	if(rs != null)try{rs.close();}catch(SQLException sq1){}
	    	if(rs != null)try{rs.close();}catch(SQLException sq2){}
	    	if(rs != null)try{rs.close();}catch(SQLException sq3){}
	    }
	    
	    return vecList;
	    
	    
	}
	
	}
	
	
	
	
	
	

