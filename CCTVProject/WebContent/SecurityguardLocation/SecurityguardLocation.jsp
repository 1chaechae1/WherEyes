<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="SecurityguardLocation.css" type="text/css" />
<title>방범대정보 키워드로 검색</title>
</head>
<body>
<div id = "wrap">
		<!-- header -->
		
		<%@ include file="/layout/header.jsp"%>
		
		<aside id = "bg">
			<div class = "main_container">
				<div class = "contents_area">
					<div class = "datalist_header_area">생활 서비스 / <span>방범대 위치 조회</span></div>
					<div class = "datalist_area cf">
						<ul class = "mainbutton">
							<li> <!-- button1: CCTV -->
								<a href = "/CCTVProject/CCTVLocation/CCTVMid_page.jsp"><span> CCTV 정보</span> </a>
							</li>
							<li> <!-- button2: 비상안심벨 -->
								<a href = "/CCTVProject/SecurityguardLocation/SecurityguardMid_page.jsp"><span> 비상안심벨 정보 </span> </a>
							</li>
							<li> <!-- button3: 아동안전지킴이집 -->
								<a href = "/CCTVProject/SafechildrenLocation/SafechildrenMid_page.jsp"><span> 아동안전지킴이집 정보</span> </a>
							</li>
						</ul>
					</div>	<!--datalist_area end -->
					
					<div class = "content_area">
						<div class = "search_area">
							<form action="<%=request.getContextPath() %>/SecurityguardLocation/SecurityguardLocation_Result.jsp" method="POST" name = "dataSetForm" id = "dataSetForm">
								<div class = "search_part_area">
									<label class = "accessibility" for = "regionNm"></label>
									<select title="선택" name = "sk" id = "selectNm" class = "content_search_selected" style="margin: 3px 0 0 105px; width:190px; height: 40px">
										<option value = "agencydivision">기관명</option>
										<option value = "region">지역명</option>
									</select>
									<input type="text" name="sv" style="width:800px; height: 38px">
									<input type="submit" value="검색" style=" width:100px; height: 39px; margin : 7px 0; line-height: 1.8;">
									<!-- <a href = "#" id = "searchBtn" class = "search_btn">검색</a> -->
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