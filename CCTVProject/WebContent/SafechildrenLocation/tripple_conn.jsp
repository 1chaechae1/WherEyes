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
<title>�Ƶ�������Ŵ���� ��Ȳ ���</title>
</head>
<body>
<div id = "wrap">
		<!-- header -->
		
		<%@ include file="/layout/header.jsp"%>
		
		<aside id = "bg">
			<div class = "main_container">
				<div class = "contents_area">
					<div class = "datalist_header_area">��Ȱ ���� / <span>�Ƶ�������Ŵ���� ��ȸ</span></div>
					<div class = "datalist_area cf">
						<ul class = "mainbutton">
							<li> <!-- button1: CCTV -->
								<a href = "/CCTVProject/CCTVLocation/CCTVMid_page.jsp"><span> CCTV ����</span> </a>
							</li>
							<li> <!-- button2: ���Ƚɺ� -->
								<a href = "/CCTVProject/SafebellLocation/SafebellMid_page.jsp"><span> ���Ƚɺ� ���� </span> </a>
							</li>
							<li> <!-- button3: ����� -->
								<a href = "/CCTVProject/SecurityguardLocation/SecurityguardMid_page.jsp"><span> ����� ����</span> </a>
							</li>
						</ul>
					</div>	<!--datalist_area end -->
					
					<div class = "content_area">
						<div class = "search_area">
							
							<br>
							<div class = "content_table_explain">
								<p style = "font-size:25px; font-weight:bold;">�Ƶ�������Ŵ���� ������ � ��Ȳ 
									<span class = "cnt_area" style = "font-size :18px; ">�� 10,535��</span>
								</p>
							</div>
							<iframe target = "_self" src="Safechildren_Chart_op.jsp">
							</iframe>	<!-- Chart1 end -->
							
							<br><br>
							<div class = "content_table_explain">
								<p style = "font-size:25px; font-weight:bold;">�Ƶ�������Ŵ���� ��Һ� ��Ȳ 
									<span class = "cnt_area" style = "font-size :18px; ">�� 12,302��</span>
								</p>
							</div>
							<iframe target = "_self" src="Safechildren_Chart_loc.jsp">
							</iframe>	<!-- Chart2 end -->
							
							<br><br>
							<div class = "content_table_explain">
								<p style = "font-size:25px; font-weight:bold;">�Ƶ�������Ŵ���� ����� ������ ��Ȳ 
									<span class = "cnt_area" style = "font-size :18px; ">�� 12,302��</span>
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