<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="SafechildrenMid_page.css" type="text/css" />
<title>아동안전지킴이집정보 검색</title>
</head>
<body>
	<div id = "wrap">
		<!-- header -->
		
		<%@ include file="/layout/header.jsp"%>
		
		<div id = "bg">
			<div id = "contents_min">
				<div class = "mid_title">생활 서비스 / <span>아동안전지킴이집 조회</span></div>
		
			<div class = "list_box">
				<div class = "list_box_img">
					<img src = "table.png" alt = "표 검색 아이콘" class = "libo_icon1">
					<img src = "chart.png" alt = "차트 검색 아이콘" class = "libo_icon2">
				</div>
			</div>
			<div class = "contData">
				<!-- 본문 영역 -->
				<div class = "contD_box" style = "height:600px">
					<a class = "contD_btn1" href = "/CCTVProject/SafechildrenLocation/SafechildrenTable.jsp" target="_blank">표로 검색</a>
					<a class = "contD_btn2" href = "/CCTVProject/SafechildrenLocation/tripple_conn.jsp" target="_blank">차트로 검색</a>
				</div>
			</div>

			</div>
		</div>
	</div>

</body>
</html>