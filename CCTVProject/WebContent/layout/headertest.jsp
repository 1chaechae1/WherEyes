<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" type="text/css">
<!-- �������� �ּ�ȭ�� �ֽ� CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- �ΰ����� �׸� -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<nav style="height: 82px; ">
		<div class = "navbar-header" style="height: 82px; background-color: #1a4c9a;">
			<button type = "button" class = "navbar-toggle collapsed"
				data-toggle = "collapse" data-target = "#bs-example-navbar-collapse-1"
				aria-expanded = "false">
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
				</button>
				<a class = "navbar-brand" href = "#" style="margin: 18px 10px 10px 18px;float: left;width: 164px;height: 21px; color: white; font-size: 32px;">WherEyes</a>
		</div>
		<div class = "collapse navbar-collapse" style="height: 80px; background-color: #1a4c9a; color: white; font-size: 22px;" id = "bs-example-navbar-collapse-1">
			<ul class = "nav navbar-nav">
				<li><a href = "/CCTVProject/main/index.jsp" style="color: white; font-size: 20px; margin: 18px 0 0 4px; word-spacing: -2px;">Ȩ</a></li>
				<li><a href = "bbs.jsp" style="color: white; font-size: 20px; margin: 18px 0 0 4px; word-spacing: -2px;">��������</a></li>
			</ul>
			<ul class = "nav navbar-nav navbar-right" style="margin: 18px 2px 0 0; color: white;">
				<li> <a href="#" style="margin: 0 2px 0 0; color: white;">USER MANAGEMENT</a></li>
				<li class = "dropdown">
					<a href = "#" class = "dropdown-toggle" style="color: white;"
						data-toggle = "dropdown" role = "button" aria-haspopup="true"
						aria-expanded = "false">�����ϱ�<span class = "caret"></span></a>
					<ul class = "dropdown-menu" >
						<li><a href = "/CCTVProject/signin/login.jsp">�α���</a></li>
						<li><a href = "/CCTVProject/signin/registration.jsp">ȸ�� ����</a></li>
					</ul>
				</li>
				<li style="color: red;"> <a href="#" style="margin: 0 2px 0 0; color: red;">LOGOUT</a></li>
			</ul>
			
		</div>
	</nav>
</body>
</html>