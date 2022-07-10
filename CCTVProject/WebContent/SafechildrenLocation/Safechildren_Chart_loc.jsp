<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<div class="one-graph"></div>
<script src="https://d3js.org/d3.v4.min.js"></script>
<script>
var w = 1300, h = 775;
var dataName = ["놀이터", "유치원",  "아파트단지", "공원", "초등학교",  "통학로"];
var graphData = [167, 387,  1538, 484, 3918, 5808];
var colorData = ["#BEEFFF", "#B4E5FF",  "#A0D1F7","#AADBFF", "#96C7ED", "#8CBDED"];
var pie = d3.pie();
var arc = d3.arc().innerRadius(100).outerRadius(350);
 
var svg = d3.select(".one-graph")
    .append("svg")
    .attr("width", w)
    .attr("height", h)
    .attr("id", "graphWrap");
 
var g = svg.selectAll(".pie")
    .data(pie(graphData))
    .enter()
    .append("g")
    .attr("class", "pie")
    .attr("transform","translate("+w/2+","+h/2+")");
 
g.append("path")
    .style("fill", function(d, i) {
        return colorData[i];
    }) 
    .transition()
    .duration(400)
    .delay(function(d, i) { 
        return i * 400;
    })
    .attrTween("d", function(d, i) { 
        var interpolate = d3.interpolate(
            {startAngle : d.startAngle, endAngle : d.startAngle}, 
            {startAngle : d.startAngle, endAngle : d.endAngle} 
        );
        return function(t){
            return arc(interpolate(t)); 
        }
    });
 
g.append("text")
    .attr("transform", function(d) { return "translate(" + arc.centroid(d) + ")"; })
    .attr("dy", ".35em")
    .style("text-anchor", "middle")
    .text(function(d, i) {
        return  d.endAngle-d.startAngle > 0.2 ?
                dataName[i] + " (" + Math.round(1000*(d.endAngle-d.startAngle)/(Math.PI*2))/10 + "%)" : ""
    });
 
svg.append("text")
    .attr("class", "total")
    .attr("transform", "translate("+(w/2-35)+", "+(h/2+5)+")")
    .text(" Total:" + d3.sum(graphData));
 
 
</script>
</head>
<body>

</body>
</html>