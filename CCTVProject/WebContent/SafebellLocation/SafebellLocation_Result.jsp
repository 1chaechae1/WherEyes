<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="SafebellLocation.css" type="text/css">
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
<title>비상안심벨정보 조회 결과</title>
</head>
<body>
<div id = "wrap">
	<!-- header -->
	<%@ include file="/layout/header.jsp"%>
	
	<aside id = "bg">
		<div class = "main_container">
			<div class = "contents_area">
				<div class = "datalist_header_area">생활 서비스 / <span>비상안심벨 위치 조회</span></div>
				<div class = "datalist_area cf">
					<ul class = "mainbutton">
						<li> <!-- button1: 비상안심벨 -->
							<a href = "/CCTVProject/CCTVLocation/CCTVMid_page.jsp"><span> CCTV 정보</span> </a>
						</li>
						<li> <!-- button2: 방범대 -->
							<a href = "/CCTVProject/SecurityguardLocation/SecurityguardMid_page.jsp"><span> 방범대 정보 </span> </a>
						</li>
						<li> <!-- button3: 아동안전지킴이집 -->
							<a href = "/CCTVProject/SafechildrenLocation/SafechildrenMid_page.jsp"><span> 아동안전지킴이집 정보</span> </a>
						</li>
					</ul>
				</div>	<!--datalist_area cf end -->
				
				<div class = "content_explain">
					<p style = "font-size:30px; font-weight:bold;">비상안심벨 정보 검색 결과 
						<a class = "download-btn-area" href="/CCTVProject/upload/충남_안전비상벨위치정보.csv" download="">다운로드</a> 
					</p>
						<table>
							<thead>
  								<tr>
  									<th>번호</th>
  									<th>안전비상벨관리번호</th>
  									<th>설치목적</th>
  									<th>설치장소유형</th>
  									<th>설치위치</th>
  									<th>소재지도로명주소</th>
  									<th>소재지지번주소</th>
  									<th>연계방식</th>
  									<th>경찰연계유무</th>
 							 		<th>부가기능</th>
  									<th>안전비상설치연도</th>
  									<th>최종점검일자</th>
  									<th>최종점검결과구분</th>
  									<th>관리기관명</th>
  									<th>관리기관전화번호</th>
 		 							<th>데이터기준일자</th>
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
							//out.println("01 sk null, sv null인 조건");
							pstmt = conn.prepareStatement("select * from safebell_INFORM");
						}	
						else if(sk != null & sv.equals("")){
							//out.println("02 sk 값 O, sv 공백 조건");
							pstmt = conn.prepareStatement("select * from safebell_INFORM");
						}
						else if(sk != null & sv != null){
							//out.println("03 sk, sv 둘다 값 O");
							if(sk.equals("installpurpose")){
								pstmt = conn.prepareStatement("SELECT * FROM safebell_INFORM WHERE installpurpose like ?");
							}else if(sk.equals("adminname")){
								pstmt = conn.prepareStatement("SELECT * FROM safebell_INFORM WHERE adminname like ?");
							}else if(sk.equals("region")){
								pstmt = conn.prepareStatement("SELECT * FROM safebell_INFORM WHERE roadname or addr like ?");
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
							<td><%=rs.getString("bellmanagenum") %></td>
							<td><%=rs.getString("installpurpose") %></td>
							<td><%=rs.getString("installsitetype") %></td>
							<td><%=rs.getString("installlocation") %></td>
							<td><%=rs.getString("roadname") %></td>
							<td><%=rs.getString("addr") %></td>
							<td><%=rs.getString("linkagemethod") %></td>
							<td><%=rs.getString("policeconnstatus") %></td>
							<td><%=rs.getString("addfunc") %></td>
							<td><%=rs.getInt("installyears") %></td>
							<td><%=rs.getDate("finaldate") %></td>
							<td><%=rs.getString("finalresult") %></td>
							<td><%=rs.getString("adminname") %></td>
							<td><%=rs.getString("adminnum") %></td>
							<td><%=rs.getDate("dbdate") %></td>	
						</tr>
					<%
						}
					}catch(SQLException e) {
	  					out.println(e.getMessage());
	  					e.printStackTrace();
  					}finally {
	 					// 사용한 Statement 종료
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