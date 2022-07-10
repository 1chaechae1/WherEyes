package com.list.safebelllocation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Bell_DBConnect {
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
	public ArrayList<BellDB> cliAllData() {
		ArrayList<BellDB> list = new ArrayList <BellDB>();
		try {
			 // 오라클 연결
            getConnection();
            // SQL 문장 전송
            String sqlList="SELECT DISTINCT num, installpurpose, adminname, roadname, addr, cameranum, camerapixels, photoinform, storagedays, yearandmonths, adminnum, dbdate"
                    + "FROM CCTV_INFORM ORDER BY num ASC";
            ps=conn.prepareStatement(sqlList); //executeQuery()
            // 결과값 받기
            ResultSet rs=ps.executeQuery();
            while(rs.next()) {
            	BellDB l1= new BellDB();
            	l1.setNum(rs.getInt(1));
            	l1.setBellmanagenum(rs.getString(2));
            	l1.setInstallpurpose(rs.getString(3));
            	l1.setInstallsitetype(rs.getString(4));
            	l1.setInstalllocation(rs.getString(5));
            	l1.setRoadname(rs.getString(6));
            	l1.setAddr(rs.getString(7));
            	l1.setLinkagemethod(rs.getString(8));
            	l1.setPoliceconnstatus(rs.getString(9));
            	l1.setAddfunc(rs.getString(10));
            	l1.setInstallyears(rs.getInt(11));
            	l1.setFinaldate(rs.getDate(12));
            	l1.setFinalresult(rs.getString(13));
            	l1.setAdminname(rs.getString(14));
            	l1.setAdminnum(rs.getString(15));
            	l1.setDbdate(rs.getDate(16));
            	
            	list.add(l1);
            }
            	rs.close();
            	
            } catch(Exception ex) {
            	System.out.println(ex.getMessage());
            } finally {
            	disConnection();
            } return list;
		}
	public BellDB cliAllData(int mno) {
		BellDB l1 = new BellDB();
		try {
			getConnection();
			String sqlList="SELECT num, installpurpose, adminname, roadname, addr, cameranum, camerapixels, photoinform, storagedays, yearandmonths, adminnum, dbdate FROM CCTV_INFORM WHERE mno="+mno;
			ps=conn.prepareStatement(sqlList);
	        ResultSet rs=ps.executeQuery();
	        rs.next();
	        //값을 채운다
	        l1.setNum(rs.getInt(1));
        	l1.setBellmanagenum(rs.getString(2));
        	l1.setInstallpurpose(rs.getString(3));
        	l1.setInstallsitetype(rs.getString(4));
        	l1.setInstalllocation(rs.getString(5));
        	l1.setRoadname(rs.getString(6));
        	l1.setAddr(rs.getString(7));
        	l1.setLinkagemethod(rs.getString(8));
        	l1.setPoliceconnstatus(rs.getString(9));
        	l1.setAddfunc(rs.getString(10));
        	l1.setInstallyears(rs.getInt(11));
        	l1.setFinaldate(rs.getDate(12));
        	l1.setFinalresult(rs.getString(13));
        	l1.setAdminname(rs.getString(14));
        	l1.setAdminnum(rs.getString(15));
        	l1.setDbdate(rs.getDate(16));
        	rs.close();
		}catch(Exception ex) {
            System.out.println(ex.getMessage());
        }
        finally {
            disConnection();
		}return l1;
	}


}