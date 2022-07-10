<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="SecurityguardLocation.css" type="text/css" />
<style>
table {
	width: 100%;
	border-top: 1px solid #444444;
    border-collapse: collapse;
    margin: auto 0;
}
th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    text-align: center;
}
th {
	background-color: #bbdefb;
	font-size: 14pt;
}
td {
	background-color: #e3f2fd;
	font-size: 12pt;
}
a.download-btn-area {
    position: relative;
    float: right;
    margin-top: 9px;
   	background: #389eaf;
    border-radius: 6px;
    width: 85px;
    height: 35px;
    padding: 3px 5px;
    text-align: center;
    font-size: 16px;
    color: white;
}
</style>
<title>��������� ��ȸ ���</title>
</head>
<body>
<div id = "wrap">
	<!-- header -->
	<%@ include file="/layout/header.jsp"%>
	
	<aside id = "bg">
		<div class = "main_container">
			<div class = "contents_area">
				<div class = "datalist_header_area">��Ȱ ���� / <span>����� ��ġ ��ȸ</span></div>
				<div class = "datalist_area cf">
					<ul class = "mainbutton">
						<li> <!-- button1: ���Ƚɺ� -->
							<a href = "/CCTVProject/CCTVLocation/CCTVMid_page.jsp"><span> CCTV ����</span> </a>
						</li>
						<li> <!-- button2: ����� -->
							<a href = "/CCTVProject/SafebellLocation/SafebellMid_page.jsp"><span> ���Ƚɺ� ���� </span> </a>
						</li>
						<li> <!-- button3: �Ƶ�������Ŵ���� -->
							<a href = "/CCTVProject/SafechildrenLocation/SafechildrenMid_page.jsp"><span> �Ƶ�������Ŵ���� ����</span> </a>
						</li>
					</ul>
				</div>	<!--datalist_area cf end -->
			
				<div class = "content_explain">
				<p style = "font-size:30px; font-weight:bold;">����� ���� �˻� ��� 
					<a class = "download-btn-area" href="/CCTVProject/upload/���� �������� ��Ȳ_20211231.csv" download="">�ٿ�ε�</a> 
				</p>
				<table>
				<thead>
  					<tr>
  						<th style="text-align: center;">��ȣ</th>
  						<th style="text-align: center;">��ü�����</th>
 				 		<th style="text-align: center;">���θ��ּ�</th>
  					</tr>
  				</thead>
  					<%
  					request.setCharacterEncoding("EUC-KR");
  					Connection conn=null;
  					PreparedStatement pstmt = null;
  					ResultSet rs = null;
  
  					Class.forName("com.mysql.jdbc.Driver");
  					String sk = request.getParameter("sk");
  					String sv = request.getParameter("sv");
  					//System.out.println(sk + "<-- sk location_explains_test.jsp");
  					//System.out.println(sv + "<-- sv location_explains_test.jsp");
  

  					try {
	  					String url = "jdbc:mysql://localhost:3306/cctv?" + "useUnicode=true&characterEncoding=euckr";
						String uid = "root";
						String pwd = "1234";
						conn = DriverManager.getConnection(url, uid, pwd);
						if(sk==null & sv==null){
							//out.println("01 sk null, sv null�� ����");
							pstmt = conn.prepareStatement("select * from SECURITYGUARD_INFORM");
						}	
						else if(sk != null & sv.equals("")){
							//out.println("02 sk �� O, sv ���� ����");
							pstmt = conn.prepareStatement("select * from SECURITYGUARD_INFORM");
						}
						else if(sk != null & sv != null){
							//out.println("03 sk, sv �Ѵ� �� O");
							if(sk.equals("agencydivision")){
								pstmt = conn.prepareStatement("SELECT * FROM SECURITYGUARD_INFORM WHERE agencyname like ?");
							}else if(sk.equals("region")){
								pstmt = conn.prepareStatement("SELECT * FROM SECURITYGUARD_INFORM WHERE roadname like ?");
							}
			
							pstmt.setString(1, "%"+sv+"%"); 
						}
						//out.println("<br>"+pstmt+"<---pstmt");
						rs=pstmt.executeQuery();
						//System.out.println(rs+"<---rs m_list.jsp");
		
						while(rs.next()){
					%>	
						<tr>
							<td><%=rs.getInt("num") %></td>
							<td><%=rs.getString("agencyname") %></td>
							<td><%=rs.getString("roadname") %></td>
						</tr>
					<%
						}
					}catch(SQLException e) {
	  					out.println(e.getMessage());
	  					e.printStackTrace();
  					}finally {
	 					// ����� Statement ����
	 					if(rs != null) try {rs.close(); } catch(SQLException e){}
						if(pstmt != null) try {pstmt.close(); } catch(SQLException e){}
	  					if(conn != null) try {conn.close(); } catch(SQLException e){}
  					}
  					%>
				</table>
				</div>	<!-- content_explain -->
			</div>	<!-- contents_area end -->
		</div>	<!-- main_container -->
	</aside>
</div>
</body>
</html>