<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="SafechildrenTable.css" type="text/css" />
<title>�Ƶ�������Ŵ���� ��Ȳ ��ȸ</title>
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
					<div class = "datalist_header_area">��Ȱ ���� / <span>�Ƶ�������Ŵ���� ��ȸ</span></div>
					<div class = "datalist_area cf">
						<ul class = "mainbutton">
							<li> <!-- button1: CCTV -->
								<a href = "/CCTVProject/CCTVLocation/CCTVMid_page.jsp"><span> CCTV ����</span> </a>
							</li>
							<li> <!-- button2: ���Ƚɺ� -->
								<a href = "/CCTVProject/SafebellLocation/SafebellMid_page.jsp"><span> ���Ƚɺ� ���� </span> </a>
							</li>
							<li> <!-- button3: ����� -->
								<a href = "/CCTVProject/SecurityguardLocation/SecurityguardMid_page.jsp"><span> ����� ����</span> </a>
							</li>
						</ul>
					</div>	<!--datalist_area end -->
					
					<div class = "content_area">
						<div class = "search_area">
							<br>
							<div class = "content_table_explain">
								<p style = "font-size:25px; font-weight:bold;">�Ƶ�������Ŵ���� ������ � ��Ȳ 
									<span class = "cnt_area" style = "font-size :18px; ">�� 10,535��</span>
									<a class = "download-btn-area" href="/CCTVProject/upload/�Ƶ�������Ŵ�� � ��Ȳ_20201231.csv" download="">�ٿ�ε�</a> 
								</p>
							</div>
							<div id = "etc-data-table" class="data-table">
								<table class = "table">
								<thead>
									<tr>
										<th style="text-align: center;">����</th>
										<th style="text-align: center;">����</th>
										<th style="text-align: center;">�λ�</th>
										<th style="text-align: center;">�뱸</th>
										<th style="text-align: center;">��õ</th>
										<th style="text-align: center;">����</th>
										<th style="text-align: center;">����</th>
										<th style="text-align: center;">���</th>
										<th style="text-align: center;">����</th>
										<th style="text-align: center;">���</th>
										<th style="text-align: center;">����</th>
										<th style="text-align: center;">���</th>
										<th style="text-align: center;">�泲</th>
										<th style="text-align: center;">����</th>
										<th style="text-align: center;">����</th>
										<th style="text-align: center;">���</th>
										<th style="text-align: center;">�泲</th>
										<th style="text-align: center;">����</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>�ο�(��)</td>
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
								<p style = "font-size:25px; font-weight:bold;">�Ƶ�������Ŵ���� ��Һ� ��Ȳ 
									<span class = "cnt_area" style = "font-size :18px;">�� 12,302��</span>
									
									<a class = "download-btn-area" href="/CCTVProject/upload/�Ƶ�������Ŵ���� ��Һ� ��Ȳ_20201231.csv" download="">�ٿ�ε�</a> 
								</p>
							</div>
							<div id = "etc-data-table" class="data-table">
								<table class = "table">
								<thead>
									<tr>
										<th style="text-align: center;">����</th>
										<th style="text-align: center;">��ġ��</th>
										<th style="text-align: center;">�ʵ��б�</th>
										<th style="text-align: center;">����Ʈ����</th>
										<th style="text-align: center;">������</th>
										<th style="text-align: center;">����</th>
										<th style="text-align: center;">���з�</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>����</td>
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
								<p style = "font-size:25px; font-weight:bold;">�Ƶ�������Ŵ���� ����� ������ ��Ȳ 
									<span class = "cnt_area" style = "font-size :18px; ">�� 12,302��</span>
								
									<a class = "download-btn-area" href="/CCTVProject/upload/�Ƶ�������Ŵ���� ����� ������ ��Ȳ_20201231.csv" download="">�ٿ�ε�</a> 
								</p>
							</div>
							<div id = "etc-data-table" class="data-table">
								<table class = "table">
								<thead>
									<tr>
										<th style="text-align: center;">����</th>
										<th style="text-align: center;">24��������</th>
										<th style="text-align: center;">�౹</th>
										<th style="text-align: center;">���鰡��</th>
										<th style="text-align: center;">������</th>
										<th style="text-align: center;">��</th>
										<th style="text-align: center;">��Ÿ</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>����</td>
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