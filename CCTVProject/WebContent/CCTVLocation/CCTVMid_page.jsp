<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="CCTVMid_page.css" type="text/css" />
<title>CCTV���� �˻�</title>
</head>
<body>
	<div id = "wrap">
		<!-- header -->
		
		<%@ include file="/layout/header.jsp"%>
		
		<div id = "bg">
			<div id = "contents_min">
				<div class = "mid_title">��Ȱ ���� / <span>CCTV��ġ ��ȸ</span></div>
		
			<div class = "list_box">
				<div class = "list_box_img">
					<img src = "keyword_search.png" alt = "Ű���� �˻� ������" class = "libo_icon1">
					<img src = "map_search.png" alt = "���� �˻� ������" class = "libo_icon2">
				</div>
			</div>
			<div class = "contData">
				<!-- ���� ���� -->
				<div class = "contD_box" style = "height:600px">
					<a class = "contD_btn1" href = "/CCTVProject/CCTVLocation/CCTVLocation.jsp" target="_blank">Ű����� �˻�</a>
					<a class = "contD_btn2" href = "/CCTVProject/CCTVLocation/search_result.html" target="_blank">������ �˻�</a>
				</div>
			</div>

			</div>
		</div>
	</div>

</body>
</html>