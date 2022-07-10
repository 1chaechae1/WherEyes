<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="CCTVLocation.css" type="text/css" />
<title>CCTV���� Ű����� �˻�</title>
</head>
<body>
	<div id = "wrap">
		<!-- header -->
		
		<%@ include file="/layout/header.jsp"%>
		
		<aside id = "bg">
			<div class = "main_container">
				<div class = "contents_area">
					<div class = "datalist_header_area">��Ȱ ���� / <span>CCTV��ġ ��ȸ</span></div>
					<div class = "datalist_area cf">
						<ul class = "mainbutton">
							<li> <!-- button1: ���Ƚɺ� -->
								<a href = "/CCTVProject/SafebellLocation/SafebellMid_page.jsp"><span> ��� �Ƚɺ� ����</span> </a>
							</li>
							<li> <!-- button2: ����� -->
								<a href = "/CCTVProject/SecurityguardLocation/SecurityguardMid_page.jsp"><span> ����� ���� </span> </a>
							</li>
							<li> <!-- button3: �Ƶ�������Ŵ���� -->
								<a href = "/CCTVProject/SafechildrenLocation/SafechildrenMid_page.jsp"><span> �Ƶ�������Ŵ���� ����</span> </a>
							</li>
						</ul>
					</div>	<!--datalist_area cf end -->
					
					<div class = "content_area">
						<div class = "search_area">
							<form action="<%=request.getContextPath() %>/CCTVLocation/CCTVLocation_Result.jsp" method="POST" name = "dataSetForm" id = "dataSetForm">
								<div class = "search_part_area">
									<label class = "accessibility" for = "regionNm"></label>
									<select title="����" name = "sk" id = "selectNm" class = "content_search_selected" style="margin: 3px 0 0 105px; width:190px; height: 40px">
										<option value = "installpurpose">��ġ��������</option>
										<option value = "adminname">���������</option>
										<option value = "region">������</option>
									</select>
									<input type = "text" name = "sv" style="width:800px; height: 38px">
									<input type = "submit" value = "�˻�" style=" width:100px; height: 39px; margin : 7px 0; line-height: 1.8;">
									<!-- <a href = "#" id = "searchBtn" class = "search_btn">�˻�</a> -->
								</div>	<!-- search_part end -->
							</form>
						</div>	<!-- search_area end -->
					<div class = "content_explain">
						
					</div>
					
					
					</div>
					
					
				</div>
			</div>
		
		
		</aside>
		
		</div>

</body>
</html>