<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="SafechildrenTable.css" type="text/css" />
<title>아동안전지킴이집 현황 조회</title>
<style>
table {
	width: 100%;
	border-top: 1px solid #444444;
    border-collapse: collapse;
    margin: auto 0;
}
th, td {
    border-bottom: 1px solid #444444;
    padding: 15px;
    text-align: center;
}
th {
	background-color: #bbdefb;
	text-align: center;
}
td {
	background-color: #e3f2fd;
}
a.download-btn-area {
    position: relative;
    float: right;
   	background: #389eaf;
    border-radius: 6px;
    width: 85px;
    height: 35px;
    padding: 3px 5px;
    text-align: center;
    font-size: 16px;
    color: white;
}

</style>
</head>
<body>
<div id = "wrap">
		<!-- header -->
		
		<%@ include file="/layout/header.jsp"%>
		
		<aside id = "bg">
			<div class = "main_container">
				<div class = "contents_area">
					<div class = "datalist_header_area">생활 서비스 / <span>아동안전지킴이집 조회</span></div>
					<div class = "datalist_area cf">
						<ul class = "mainbutton">
							<li> <!-- button1: CCTV -->
								<a href = "/CCTVProject/CCTVLocation/CCTVMid_page.jsp"><span> CCTV 정보</span> </a>
							</li>
							<li> <!-- button2: 비상안심벨 -->
								<a href = "/CCTVProject/SafebellLocation/SafebellMid_page.jsp"><span> 비상안심벨 정보 </span> </a>
							</li>
							<li> <!-- button3: 방범대 -->
								<a href = "/CCTVProject/SecurityguardLocation/SecurityguardMid_page.jsp"><span> 방범대 정보</span> </a>
							</li>
						</ul>
					</div>	<!--datalist_area end -->
					
					<div class = "content_area">
						<div class = "search_area">
							<br>
							<div class = "content_table_explain">
								<p style = "font-size:25px; font-weight:bold;">아동안전지킴이집 지역별 운영 현황 
									<span class = "cnt_area" style = "font-size :18px; ">총 10,535건</span>
									<a class = "download-btn-area" href="/CCTVProject/upload/아동안전지킴이 운영 현황_20201231.csv" download="">다운로드</a> 
								</p>
							</div>
							<div id = "etc-data-table" class="data-table">
								<table class = "table">
								<thead>
									<tr>
										<th style="text-align: center;">구분</th>
										<th style="text-align: center;">서울</th>
										<th style="text-align: center;">부산</th>
										<th style="text-align: center;">대구</th>
										<th style="text-align: center;">인천</th>
										<th style="text-align: center;">광주</th>
										<th style="text-align: center;">대전</th>
										<th style="text-align: center;">울산</th>
										<th style="text-align: center;">세종</th>
										<th style="text-align: center;">경기</th>
										<th style="text-align: center;">강원</th>
										<th style="text-align: center;">충북</th>
										<th style="text-align: center;">충남</th>
										<th style="text-align: center;">전북</th>
										<th style="text-align: center;">전남</th>
										<th style="text-align: center;">경북</th>
										<th style="text-align: center;">경남</th>
										<th style="text-align: center;">제주</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>인원(명)</td>
										<td>1050</td>
										<td>531</td>
										<td>399</td>
										<td>434</td>
										<td>268</td>
										<td>258</td>
										<td>204</td>
										<td>82</td>
										<td>2196</td>
										<td>611</td>
										<td>450</td>
										<td>713</td>
										<td>730</td>
										<td>747</td>
										<td>819</td>
										<td>875</td>
										<td>168</td>
									</tr>
								</tbody>
								</table>
							</div>
							
							<br><br>
							<div class = "content_table_explain">
								<p style = "font-size:25px; font-weight:bold;">아동안전지킴이집 장소별 현황 
									<span class = "cnt_area" style = "font-size :18px;">총 12,302건</span>
									
									<a class = "download-btn-area" href="/CCTVProject/upload/아동안전지킴이집 장소별 현황_20201231.csv" download="">다운로드</a> 
								</p>
							</div>
							<div id = "etc-data-table" class="data-table">
								<table class = "table">
								<thead>
									<tr>
										<th style="text-align: center;">구분</th>
										<th style="text-align: center;">유치원</th>
										<th style="text-align: center;">초등학교</th>
										<th style="text-align: center;">아파트단지</th>
										<th style="text-align: center;">놀이터</th>
										<th style="text-align: center;">공원</th>
										<th style="text-align: center;">통학로</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>수량</td>
										<td>387</td>
										<td>3918</td>
										<td>1538</td>
										<td>167</td>
										<td>484</td>
										<td>5808</td>
									</tr>
								</tbody>
								</table>
							</div>
							
							<br><br>
							<div class = "content_table_explain">
								<p style = "font-size:25px; font-weight:bold;">아동안전지킴이집 사업장 유형별 현황 
									<span class = "cnt_area" style = "font-size :18px; ">총 12,302건</span>
								
									<a class = "download-btn-area" href="/CCTVProject/upload/아동안전지킴이집 사업장 유형별 현황_20201231.csv" download="">다운로드</a> 
								</p>
							</div>
							<div id = "etc-data-table" class="data-table">
								<table class = "table">
								<thead>
									<tr>
										<th style="text-align: center;">구분</th>
										<th style="text-align: center;">24시편의점</th>
										<th style="text-align: center;">약국</th>
										<th style="text-align: center;">나들가게</th>
										<th style="text-align: center;">문구점</th>
										<th style="text-align: center;">상가</th>
										<th style="text-align: center;">기타</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>수량</td>
										<td>2489</td>
										<td>1129</td>
										<td>889</td>
										<td>1665</td>
										<td>3426</td>
										<td>2704</td>
									</tr>
								</tbody>
								</table>
							</div>
						</div>
					</div>	<!-- content_area end -->

				</div>	<!-- contents_area end -->
					
			</div>		
				
			
		
		
		</aside>
		
</div>
</body>
</html>