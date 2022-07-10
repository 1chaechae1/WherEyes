<%@page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style>
.search_part {border-bottom: 22px solid rgba(24,57,109,0.5)}
</style>
<title>WherEyes</title>

<link rel="stylesheet" href="/css/index.css" type="text/css" />
</head>
<body>
	<div id = "wrap">
		<!-- header -->
		<%@include file="/layout/header.jsp"%>
		
		<div id = "bg">
			<div class = "search_part">
				<div class = "search_part_visual">
					<div class = "title">
						<span class = "ir">�׻� ��� �������� ���� ������ �ְ�, ���Ѻ���.</span>
						<span class = "title_txt">WherEyes</span>
					</div>
					
					<!-- title -->
				<div class = "search d_form">
					<form>
						<fieldset>
							<legend>�˻�</legend>
							<label for = "searchword">�˻��� �Է�</label>
							<input type = "text" id = "searchword" name = "searchword" placeholder = "�˻�� �Է����ּ���.">
							<button id = "searchbtn" type = "button" onclick = "">
								<span class = "searchbtn_txt">�˻�</span>
								<span class = "searchbtn_icon"><img src="ico_search.png" alt = "search"></span>
							</button>
						</fieldset>
					</form>
				</div> <!-- search_form end -->
				</div> <!-- search_part_visual end -->
			</div>	<!-- search_part end -->
			<div class = "content_bg">
				<div id = "content" class = "content cl">
					<ul class = "big button">
						<li onclick = ""> <!-- button1: CCTV -->
							<span class = "icon"><img src="CCTV.png" class = "img_icon1" alt = "CCTV"></span>
							<p class = "bigbutton_txt">
								<a href = "/CCTVProject/CCTVLocation/CCTVMid_page.jsp" style="padding: 57px 0 10px;">CCTV��ġ��ȸ</a>
							</p>
						</li>
						<li onclick = ""> <!-- button2: ���Ƚɺ� -->
							<span class = "icon2"><img src="Safebell.png" class = "img_icon2" alt = "SafeBell"></span>
							<p class = "bigbutton_txt">
								<a href = "/CCTVProject/SafebellLocation/SafebellMid_page.jsp">���Ƚɺ�</a>
							</p>
						</li>
						<li onclick = ""> <!-- button3: ����� -->
							<span class = "icon2"><img src="siren.png" class = "img_icon3" alt = "Siren"></span>
							<p class = "bigbutton_txt">
								<a href = "/CCTVProject/SecurityguardLocation/SecurityguardMid_page.jsp">�����</a>
							</p>
						</li>
						<li onclick = ""> <!-- button4: �Ƶ�������Ŵ���� -->
							<span class = "icon2"><img src="safechildren.png" class = "img_icon4" alt = "SafeChildren"></span>
							<p class = "bigbutton_txt">
								<a href = "/CCTVProject/SafechildrenLocation/SafechildrenMid_page.jsp">�Ƶ�������Ŵ����</a>
							</p>
						</li>
					</ul>
				</div>
			</div>	<!-- content_bg -->
		</div>
	</div>
</body>
</html>