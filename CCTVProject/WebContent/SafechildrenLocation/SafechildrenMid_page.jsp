<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="SafechildrenMid_page.css" type="text/css" />
<title>�Ƶ�������Ŵ�������� �˻�</title>
</head>
<body>
	<div id = "wrap">
		<!-- header -->
		
		<%@ include file="/layout/header.jsp"%>
		
		<div id = "bg">
			<div id = "contents_min">
				<div class = "mid_title">��Ȱ ���� / <span>�Ƶ�������Ŵ���� ��ȸ</span></div>
		
			<div class = "list_box">
				<div class = "list_box_img">
					<img src = "table.png" alt = "ǥ �˻� ������" class = "libo_icon1">
					<img src = "chart.png" alt = "��Ʈ �˻� ������" class = "libo_icon2">
				</div>
			</div>
			<div class = "contData">
				<!-- ���� ���� -->
				<div class = "contD_box" style = "height:600px">
					<a class = "contD_btn1" href = "/CCTVProject/SafechildrenLocation/SafechildrenTable.jsp" target="_blank">ǥ�� �˻�</a>
					<a class = "contD_btn2" href = "/CCTVProject/SafechildrenLocation/tripple_conn.jsp" target="_blank">��Ʈ�� �˻�</a>
				</div>
			</div>

			</div>
		</div>
	</div>

</body>
</html>