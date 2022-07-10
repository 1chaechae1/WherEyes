package com.list.cctvlocation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CCTV_DBConnect {
		 
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
	public ArrayList<CCTVDB> cliAllData() {
		ArrayList<CCTVDB> list = new ArrayList <CCTVDB>();
		try {
			 // ����Ŭ ����
            getConnection();
            // SQL ���� ����
            String sqlList="SELECT DISTINCT num, installpurpose, adminname, roadname, addr, cameranum, camerapixels, photoinform, storagedays, yearandmonths, adminnum, dbdate"
                    + "FROM CCTV_INFORM ORDER BY num ASC";
            ps=conn.prepareStatement(sqlList); //executeQuery()
            // ����� �ޱ�
            ResultSet rs=ps.executeQuery();
            while(rs.next()) {
            	CCTVDB l1= new CCTVDB();
            	l1.setNum(rs.getInt(1));
            	l1.setInstallpurpose(rs.getString(2));
            	l1.setAdminname(rs.getString(3));
            	l1.setRoadname(rs.getString(4));
            	l1.setAddr(rs.getString(5));
            	l1.setCameranum(rs.getInt(6));
            	l1.setCamerapixels(rs.getInt(7));
            	l1.setPhotoinform(rs.getString(8));
            	l1.setStoragedays(rs.getInt(9));
            	l1.setYearandmonths(rs.getString(10));
            	l1.setAdminnum(rs.getString(11));
            	l1.setDbdate(rs.getDate(12));
            	list.add(l1);
            }
            	rs.close();
            	
            } catch(Exception ex) {
            	System.out.println(ex.getMessage());
            } finally {
            	disConnection();
            } return list;
		}
	public CCTVDB cliAllData(int mno) {
		CCTVDB l1 = new CCTVDB();
		try {
			getConnection();
			String sqlList="SELECT num, installpurpose, adminname, roadname, addr, cameranum, camerapixels, photoinform, storagedays, yearandmonths, adminnum, dbdate FROM CCTV_INFORM WHERE mno="+mno;
			ps=conn.prepareStatement(sqlList);
	        ResultSet rs=ps.executeQuery();
	        rs.next();
	        //���� ä���
	        l1.setNum(rs.getInt(1));
        	l1.setInstallpurpose(rs.getString(2));
        	l1.setAdminname(rs.getString(3));
        	l1.setRoadname(rs.getString(4));
        	l1.setAddr(rs.getString(5));
        	l1.setCameranum(rs.getInt(6));
        	l1.setCamerapixels(rs.getInt(7));
        	l1.setPhotoinform(rs.getString(8));
        	l1.setStoragedays(rs.getInt(9));
        	l1.setYearandmonths(rs.getString(10));
        	l1.setAdminnum(rs.getString(11));
        	l1.setDbdate(rs.getDate(12));
        	rs.close();
		}catch(Exception ex) {
            System.out.println(ex.getMessage());
        }
        finally {
            disConnection();
		}return l1;
	}
}