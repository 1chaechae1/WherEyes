<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script> 
<meta charset="EUC-KR">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type='text/javascript' src='http://www.google.com/jsapi'></script>
	<script type='text/javascript'>
		google.load('visualization', '1', {'packages': ['geochart']});
		google.setOnLoadCallback(drawVisualization);

 		function drawVisualization() {var data = new google.visualization.DataTable();

 		data.addColumn('string', 'Country');
 		data.addColumn('number', 'Value');
 		data.addColumn({type:'string', role:'tooltip'});var ivalue = new Array();

 		data.addRows([[{v:'KR-50',f:'����Ư����ġ��'},0,'82']]);
 		ivalue['KR-50'] = '';
 		
 		data.addRows([[{v:'KR-49',f:'����Ư����ġ��'},1,'168']]);
 		ivalue['KR-49'] = '';
 
 		data.addRows([[{v:'KR-31',f:'��걤����'},2,'204']]);
		ivalue['KR-31'] = '';
 
		data.addRows([[{v:'KR-30',f:'����������'},3,'258']]);
	 	ivalue['KR-30'] = '';
	 	
 		data.addRows([[{v:'KR-29',f:'���ֱ�����'},4,'268']]);
 		ivalue['KR-29'] = '';
 
 		data.addRows([[{v:'KR-27',f:'�뱸������'},5,'399']]);
 		ivalue['KR-27'] = '';
 
 		data.addRows([[{v:'KR-28',f:'��õ������'},6,'434']]);
 		ivalue['KR-28'] = '';
 
 		data.addRows([[{v:'KR-43',f:'��û�ϵ�'},7,'450']]);
 		ivalue['KR-43'] = '';
 		
 		data.addRows([[{v:'KR-26',f:'�λ걤����'},8,'531']]);
 		ivalue['KR-26'] = '';
 
 		data.addRows([[{v:'KR-42',f:'������'},9,'611']]);
 		ivalue['KR-42'] = '';
 		
 		data.addRows([[{v:'KR-44',f:'��û����'},10,'713']]);
 		ivalue['KR-44'] = '';
 		
 		data.addRows([[{v:'KR-46',f:'����ϵ�'},11,'730']]);
 		ivalue['KR-46'] = '';
 
 		data.addRows([[{v:'KR-45',f:'���󳲵�'},12,'747']]);
 		ivalue['KR-45'] = '';
 
 		data.addRows([[{v:'KR-47',f:'���ϵ�'},13,'819']]);
 		ivalue['KR-47'] = '';
 
 		data.addRows([[{v:'KR-48',f:'��󳲵�'},14,'875']]);
 		ivalue['KR-48'] = '';
 
 		data.addRows([[{v:'KR-11',f:'����Ư����'},15,'1050']]); 
 		ivalue['KR-11'] = '';

 		data.addRows([[{v:'KR-41',f:'��⵵'},16,'2196']]);
 		ivalue['KR-41'] = '';

 		var options = {
 		backgroundColor: {fill:'transparent',stroke:'#FFFFFF' ,strokeWidth:0 },
 		colorAxis:  {minValue: 0, maxValue: 26,  colors: ['#78F3FF','#6EEAFF','#6EE0FF','#5AE0FF','#50D6FF','#46CCFF','#3CC2FF','#32B8FF','#28AEFF','#1EA4FF','#289AFF','#1E90FF',
															'#0A82FF','#0078FF','#0A6EFF','#28288C','#00008C',]},
 		legend: 'none',
 		backgroundColor: {fill:'transparent',stroke:'#FFFFFF' ,strokeWidth:0 },
 		datalessRegionColor: '#f5f5f5',
 		displayMode: 'regions',
		enableRegionInteractivity: 'true',
 		resolution: 'provinces',
 		sizeAxis: {minValue: 1, maxValue:1,minSize:10,  maxSize: 10},
 		region:'KR',
 		keepAspectRatio: true,
 		width:1300,
 		height:775,
 		tooltip: {textStyle: {color: '#444444'}, trigger:'focus'}
 		};
  		var chart = new google.visualization.GeoChart(document.getElementById('visualization'));
 		chart.draw(data, options);
 		}
 	</script>
 	<div id='visualization' class = "search-map"></div>
<title>Insert title here</title>

</head>
<body>		

</body>
</html>