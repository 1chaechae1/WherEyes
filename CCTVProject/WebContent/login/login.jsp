<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name = "viewport" content = "widt = device-width", initial-scale="1">
<link rel = "stylesheet" href = "css/bootstrap.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>WherEyes</title>
</head>
<body>

	<nav class = "navbar navbar-default">
		<div class = "navbar-header">
			<button type = "button" class = "navbar-toggle collapsed"
				data-toggle = "collapse" data-target = "#bs-example-navbar-collapse-1"
				aria-expanded = "false">
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
				</button>
				<a class = "navbar-brand" href = "main.jsp">자유 게시판</a>
		</div>
		<div class = "collapse navbar-collapse" id = "bs-example-navbar-collapse-1">
			<ul class = "nav navbar-nav">
				<li><a href = "main.jsp">메인</a></li>
				<li><a href = "bbs.jsp">자유 게시판</a></li>
			</ul>
			<ul class = "nav navbar-nav navbar-right">
				<li class = "dropdown">
					<a href = "#" class = "dropdown-toggle"
						data-toggle = "dropdown" role = "button" aria-haspopup="true"
						aria-expanded = "false">접속하기<span class = "caret"></span></a>
						<ul class = "dropdown-menu">
							<li class = "active"><a href = "login.jsp">로그인</a></li>
							<li><a href = "join.jsp">회원 가입</a></li>
						</ul>
				</li>
			</ul>
		</div>
	</nav>

	<div class = "container">
		<div class = "col-lg-4"></div>
		<div class = "col-lg-4">
			<div class = "jumbotron" style = "padding-top : 20px;">
			 	<form method = "post" action = "loginAction.jsp">
			 		<h3 style = "text-align : center;">로그인 화면</h3>
			 		<div class = "form-group">
			 			<input type = "text" class = "form-control" placeholder = "아이디" name = "userID" maxlength = "20">
			 		</div>
			 		<div class = "form-group">
			 			<input type = "password" class = "form-control" placeholder = "비밀번호" name = "userPassword" maxlength = "20">
			 		</div>
			 		<input type = "submit" class = "btn btn-primary form-control" value = "로그인">
			 	</form>
			</div>
		</div>
		<div class = "col-lg-4"></div>
	</div>
</body>
</html>