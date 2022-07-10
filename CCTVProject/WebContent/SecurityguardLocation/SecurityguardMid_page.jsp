<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="SecurityguardMid_page.css" type="text/css" />
<title>방범대정보 검색</title>
</head>
<body>
	<div id = "wrap">
		<!-- header -->
		
		<%@ include file="/layout/header.jsp"%>
		
		<div id = "bg">
			<div id = "contents_min">
				<div class = "mid_title">생활 서비스 / <span>방범대위치 조회</span></div>
		
			<div class = "list_box">
				<div class = "list_box_img">
					<img src = "keyword_search.png" alt = "키워드 검색 아이콘" class = "libo_icon1">
					<img src = "map_search.png" alt = "지도 검색 아이콘" class = "libo_icon2">
				</div>
			</div>
			<div class = "contData">
				<!-- 본문 영역 -->
				<div class = "contD_box" style = "height:600px">
					<a class = "contD_btn1" href = "/CCTVProject/SecurityguardLocation/SecurityguardLocation.jsp" target="_blank">키워드로 검색</a>
					<a class = "contD_btn2" href = "/CCTVProject/SecurityguardLocation/search_result.html" target="_blank">지도로 검색</a>
				</div>
			</div>

			</div>
		</div>
	</div>

</body>
</html>