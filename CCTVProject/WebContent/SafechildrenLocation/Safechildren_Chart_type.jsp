<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
svg {
    border: 1px solid;
}
.bar {
    fill: skyblue;
}

.bar:hover {
    fill: blue;
}

.text {
    fill: white;
    font-weight:bold;
}

.grid line {
  stroke: lightgrey;
  stroke-opacity: 0.7;
  shape-rendering: crispEdges;
}

.toolTip {
    position: absolute;
    border: 0 none;
    border-radius: 4px 4px 4px 4px;
    background-color: white;
    padding: 5px;
    text-align: center;
    font-size: 11px;
}
</style>
<svg width="1300" height="775"></svg>
<script src="https://d3js.org/d3.v4.min.js"></script>
<script>
// 챠트에 값 출력: 막대 그래프 안에
var dataset = [{x:'24편의점', y: 2489}, {x:'약국', y: 1129}, {x:'나들가게', y :889},
				{x:'문구점', y :1665}, {x:'상가', y :3426}, {x:'기타', y :2704}];

var svg = d3.select("svg");
var width  = parseInt(svg.style("width"), 10) -30;
var height = parseInt(svg.style("height"), 10)-20;

var svgG = svg.append("g")
    .attr("transform", "translate(30, 0)");
          
var xScale = d3.scaleBand()
    .domain(dataset.map(function(d) { return d.x;} ))
    .range([0, width]).padding(0.2);

var yScale = d3.scaleLinear()
    .domain([0, d3.max(dataset, function(d){ return d.y; })])
    .range([height, 0]);
    
svgG.append("g")            
    .attr("class", "grid")
    .attr("transform", "translate(0," + height + ")")
    .call(d3.axisBottom(xScale)
        .tickSize(-height)
    );
    
svgG.append("g")
    .attr("class", "grid")
    .call(d3.axisLeft(yScale)
        .ticks(5)
        .tickSize(-width)
    );
    
var barG = svgG.append("g");
    
barG.selectAll("rect")
    .data(dataset)
    .enter().append("rect")
        .attr("class", "bar")
        .attr("height", function(d, i) {return height-yScale(d.y)})
        .attr("width", xScale.bandwidth())
        .attr("x", function(d, i) {return xScale(d.x)})
        .attr("y", function(d, i) {return yScale(d.y)})
        .on("mouseover", function() { tooltip.style("display", null); })
        .on("mouseout",  function() { tooltip.style("display", "none"); })
        .on("mousemove", function(d) {
            tooltip.style("left", (d3.event.pageX+10)+"px");
            tooltip.style("top",  (d3.event.pageY-10)+"px");
            tooltip.html(d.y);
        });        
    
barG.selectAll("text")
    .data(dataset)
    .enter().append("text")
    .text(function(d) {return d.y})
        .attr("class", "text")
        .attr("x", function(d, i) {return xScale(d.x)+xScale.bandwidth()/2})
        .style("text-anchor", "middle")
        .attr("y", function(d, i) {return yScale(d.y) + 15});

var tooltip = d3.select("body").append("div").attr("class", "toolTip").style("display", "none");
    
</script>
<title>Insert title here</title>

</head>
<body>		

</body>
</html>