<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type='text/javascript' src='http://www.google.com/jsapi'></script>
<script type='text/javascript'>
google.load('visualization', '1', {'packages': ['geochart']});
google.setOnLoadCallback(drawVisualization);

  function drawVisualization() {var data = new google.visualization.DataTable();

 data.addColumn('string', 'Country');
 data.addColumn('number', 'Value');
 data.addColumn({type:'string', role:'tooltip'});var ivalue = new Array();

 data.addRows([[{v:'KR-11',f:'Acre'},0,'Exemplo de Informação']]); // 
 ivalue['KR-11'] = '';

 data.addRows([[{v:'KR-26',f:'Alagoas'},1,'Exemplo de Informação']]);
 ivalue['KR-26'] = '';

 data.addRows([[{v:'KR-27',f:'Amazonas'},2,'Exemplo de Informação']]);
 ivalue['KR-27'] = '';

 data.addRows([[{v:'KR-30',f:'Amapá'},3,'Exemplo de Informação']]);
 ivalue['KR-30'] = '';

 data.addRows([[{v:'KR-29',f:'Bahia'},4,'Exemplo de Informação']]);
 ivalue['KR-29'] = '';

 data.addRows([[{v:'KR-28',f:'Ceará'},5,'Exemplo de Informação']]);
 ivalue['KR-28'] = '';

 data.addRows([[{v:'KR-31',f:'Distrito Federal'},6,'Exemplo de Informação']]);
 ivalue['KR-31'] = '';

 data.addRows([[{v:'KR-43',f:'Espírito Santo'},7,'Exemplo de Informação']]);
 ivalue['KR-43'] = '';

 data.addRows([[{v:'KR-44',f:'Goiás'},8,'Exemplo de Informação']]);
 ivalue['KR-44'] = '';

 data.addRows([[{v:'KR-42',f:'Maranhão'},9,'Exemplo de Informação']]);
 ivalue['KR-42'] = '';

 data.addRows([[{v:'KR-41',f:'Mato Grosso do Sul'},11,'Exemplo de Informação']]);
 ivalue['KR-41'] = '';

 data.addRows([[{v:'KR-47',f:'Mato Grosso'},12,'Exemplo de Informação']]);
 ivalue['KR-47'] = '';

 data.addRows([[{v:'KR-48',f:'Pará'},13,'Exemplo de Informação']]);
 ivalue['KR-48'] = '';

 data.addRows([[{v:'KR-45',f:'Paraíba'},14,'Exemplo de Informação']]);
 ivalue['KR-45'] = '';

 data.addRows([[{v:'KR-46',f:'Pernambuco'},15,'Exemplo de Informação']]);
 ivalue['KR-46'] = '';

 data.addRows([[{v:'KR-49',f:'Piauí'},16,'Exemplo de Informação']]);
 ivalue['KR-49'] = '';

 data.addRows([[{v:'KR-50',f:'Paraná'},17,'Exemplo de Informação']]);
 ivalue['KR-50'] = '';

 var options = {
 backgroundColor: {fill:'transparent',stroke:'#FFFFFF' ,strokeWidth:0 },
 colorAxis:  {minValue: 0, maxValue: 26,  colors: ['#E5F5E0','#E5F5E0','#E5F5E0','#E5F5E0','#E5F5E0','#E5F5E0','#E5F5E0','#E5F5E0','#A1D99B','#A1D99B','#A1D99B','#A1D99B','#A1D99B','#A1D99B','#A1D99B','#A1D99B','#A1D99B','#31A354','#31A354','#31A354','#31A354','#31A354','#31A354','#31A354','#31A354','#31A354','#31A354',]},
 legend: 'none',
 backgroundColor: {fill:'transparent',stroke:'#FFFFFF' ,strokeWidth:0 },
 datalessRegionColor: '#f5f5f5',
 displayMode: 'regions',
 enableRegionInteractivity: 'true',
 resolution: 'provinces',
 sizeAxis: {minValue: 1, maxValue:1,minSize:10,  maxSize: 10},
 region:'KR',
 keepAspectRatio: true,
 width:1330,
 height:800,
 tooltip: {textStyle: {color: '#444444'}, trigger:'focus'}
 };
  var chart = new google.visualization.GeoChart(document.getElementById('visualization'));
 chart.draw(data, options);
 }
 </script>
 <div id='visualization'></div>
</head>
<body>
</body>
</html>