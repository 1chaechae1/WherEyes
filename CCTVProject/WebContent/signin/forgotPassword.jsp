<!doctype html>
<html>
<head>
<meta charset='EUC-KR'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Reset Password</title>
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link href='' rel='stylesheet'>
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<style>
body {
	background-position: center;
	background-color: #eee;
	background-repeat: no-repeat;
	background-size: cover;
	color: #505050;
	font-family: "Rubik", Helvetica, Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	line-height: 1.5;
	text-transform: none
}

.forgot {
	background-color: #fff;
	padding: 12px;
	border: 1px solid #dfdfdf
}

.padding-bottom-3x {
	padding-bottom: 72px !important
}

.card-footer {
	background-color: #fff
}

.btn {
	font-size: 13px
}

.form-control:focus {
	color: #495057;
	background-color: #fff;
	border-color: #76b7e9;
	outline: 0;
	box-shadow: 0 0 0 0px #28a745
}
</style>
<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" type="text/css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body oncontextmenu='return false' class='snippet-body'>
<!-- header -->
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
		<div style="height: 82px; margin: 0 0 0 150px; width: 1340px; background-color: #1a4c9a; color: white; font-size: 22px;" id = "bs-example-navbar-collapse-1">
			<ul>
				<li><a href = "/CCTVProject/main/index.jsp" style="color: white; font-size: 20px; margin: 18px 0 0 150px; word-spacing: -2px;">홈</a></li>
				<li><a href = "bbs.jsp" style="color: white; font-size: 20px; margin: 1px 0 50px 80px; word-spacing: -2px;">정보광장</a></li>
			</ul>
			<ul class = "nav navbar-nav navbar-right" style=" padding: 0; text-align: center; color: white;">
				<li> <a href="#" style="margin: 0px 300px 0 2px; color: white;">USER MANAGEMENT</a></li>
				<li class = "dropdown">
					<a href = "#" class = "dropdown-toggle" style="color: white; "
						data-toggle = "dropdown" role = "button" aria-haspopup="true"
						aria-expanded = "false">접속하기</a>
					<ul class = "dropdown-menu" style="color: white;  text-align: center;">
						<li><a href = "/CCTVProject/signin/login.jsp">로그인</a></li>
						<li><a href = "/CCTVProject/signin/registration.jsp">회원 가입</a></li>
					</ul>
				</li>
				<li style="color: red;"> <a href="#" style="text-align: center; padding: 0; color: red;">LOGOUT</a></li>
			</ul>
			
		</div>
	</nav>
	<div class="container padding-bottom-3x mb-2 mt-5">
		
		<div class="row justify-content-center">
			<div class="col-lg-8 col-md-10">
				<div class="forgot">
					<h2>Forgot your password?</h2>
					<p>Change your password in three easy steps. This will help you
						to secure your password!</p>
					<ol class="list-unstyled">
						<li><span class="text-primary text-medium">1. </span>Enter
							your email address below.</li>
						<li><span class="text-primary text-medium">2. </span>Our
							system will send you an OTP to your email</li>
						<li><span class="text-primary text-medium">3. </span>Enter the OTP on the 
						next page</li>
					</ol>
				</div>
				<form class="card mt-4" action="forgotPassword" method="POST">
					<div class="card-body">
						<div class="form-group">
							<label for="email-for-pass">Enter your email address</label> <input
								class="form-control" type="text" name="email" id="email-for-pass" required=""><small
								class="form-text text-muted">Enter the registered email address . Then we'll
								email a OTP to this address.</small>
						</div>
					</div>
					<div class="card-footer">
						<button class="btn btn-success" type="submit">Get New
							Password</button>
							<a href="login.jsp" class="signup-image-link">Login Again</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type='text/javascript'
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
	<script type='text/javascript' src=''></script>
	<script type='text/javascript' src=''></script>
	<script type='text/Javascript'></script>
</body>
</html>