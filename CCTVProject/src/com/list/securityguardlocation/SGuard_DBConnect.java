package com.list.securityguardlocation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class SGuard_DBConnect {
	private Connection conn;
	private PreparedStatement ps;
    private final String URL = "jdbc:mysql://localhost:3306/cctv";
    {

	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (Exception ex) {
        System.out.println(ex.getMessage());
    }
}
    public void getConnection() {
        try {
		conn = DriverManager.getConnection(URL, "root", "1234");
		}catch(Exception ex) {}
    }
    public void disConnection() {
    	try {
    		if(ps!=null)
    			ps.close();
    		if(conn!=null)
    			conn.close();
        }catch(Exception ex) {}
    }
	public ArrayList<SGuardDB> cliAllData() {
		ArrayList<SGuardDB> list = new ArrayList <SGuardDB>();
		try {
			 // 오라클 연결
            getConnection();
            // SQL 문장 전송
            String sqlList="SELECT DISTINCT num, agencyname, roadname"
                    + "FROM SECURITYGUARD_INFORM ORDER BY num ASC";
            ps=conn.prepareStatement(sqlList); //executeQuery()
            // 결과값 받기
            ResultSet rs=ps.executeQuery();
            while(rs.next()) {
            	SGuardDB l1= new SGuardDB();
            	l1.setNum(rs.getInt(1));
            	l1.setAgencyname(rs.getString(2));
            	l1.setRoadname(rs.getString(3));
            	
            	list.add(l1);
            }
            	rs.close();
        	
        	} catch(Exception ex) {
        		System.out.println(ex.getMessage());
        	} finally {
        		disConnection();
        	} return list;
	}
public SGuardDB cliAllData(int mno) {
	SGuardDB l1 = new SGuardDB();
	try {
		getConnection();
		String sqlList="SELECT num, agencyname, roadname FROM SECURITYGUARD_INFORM WHERE mno="+mno;
		ps=conn.prepareStatement(sqlList);
        ResultSet rs=ps.executeQuery();
        rs.next();
        //값을 채운다
        l1.setNum(rs.getInt(1));
    	l1.setAgencyname(rs.getString(2));
    	l1.setRoadname(rs.getString(3));
    	rs.close();
	}catch(Exception ex) {
        System.out.println(ex.getMessage());
    }
    finally {
        disConnection();
	}return l1;
	}
}
