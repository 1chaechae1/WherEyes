<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="SafechildrenTable.css" type="text/css" />
<style>
.data-table {
flex-direction: column;
}
iframe {
padding:0 0 0 65px;
width: 100%;
height: 805px;
frameborder: 0;
scrolling: no;
}
</style>
<title>아동안전지킴이집 현황 통계</title>
</head>
<body>
<div id = "wrap">
		<!-- header -->
		
		<%@ include file="/layout/header.jsp"%>
		
		<aside id = "bg">
			<div class = "main_container">
				<div class = "contents_area">
					<div class = "datalist_header_area">생활 서비스 / <span>아동안전지킴이집 조회</span></div>
					<div class = "datalist_area cf">
						<ul class = "mainbutton">
							<li> <!-- button1: CCTV -->
								<a href = "/CCTVProject/CCTVLocation/CCTVMid_page.jsp"><span> CCTV 정보</span> </a>
							</li>
							<li> <!-- button2: 비상안심벨 -->
								<a href = "/CCTVProject/SafebellLocation/SafebellMid_page.jsp"><span> 비상안심벨 정보 </span> </a>
							</li>
							<li> <!-- button3: 방범대 -->
								<a href = "/CCTVProject/SecurityguardLocation/SecurityguardMid_page.jsp"><span> 방범대 정보</span> </a>
							</li>
						</ul>
					</div>	<!--datalist_area end -->
					
					<div class = "content_area">
						<div class = "search_area">
							
							<br>
							<div class = "content_table_explain">
								<p style = "font-size:25px; font-weight:bold;">아동안전지킴이집 지역별 운영 현황 
									<span class = "cnt_area" style = "font-size :18px; ">총 10,535건</span>
								</p>
							</div>
							<iframe target = "_self" src="Safechildren_Chart_op.jsp">
							</iframe>	<!-- Chart1 end -->
							
							<br><br>
							<div class = "content_table_explain">
								<p style = "font-size:25px; font-weight:bold;">아동안전지킴이집 장소별 현황 
									<span class = "cnt_area" style = "font-size :18px; ">총 12,302건</span>
								</p>
							</div>
							<iframe target = "_self" src="Safechildren_Chart_loc.jsp">
							</iframe>	<!-- Chart2 end -->
							
							<br><br>
							<div class = "content_table_explain">
								<p style = "font-size:25px; font-weight:bold;">아동안전지킴이집 사업장 유형별 현황 
									<span class = "cnt_area" style = "font-size :18px; ">총 12,302건</span>
								</p>
							</div>
							<iframe target = "_self" src="Safechildren_Chart_type.jsp">
							</iframe>	<!-- Chart3 end -->
							
						</div>
					</div>	<!-- content_area end -->

				</div>	<!-- contents_area end -->
					
			</div>		
				
			
		
		
		</aside>
		
</div>
</body>
</html>