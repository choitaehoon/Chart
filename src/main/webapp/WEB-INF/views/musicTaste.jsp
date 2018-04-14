<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<div id="sankey_multiple" style="width: 900px; height: 300px;"></div>

<script type="text/javascript">
  google.charts.load("current", {packages:["sankey"]});
  google.charts.setOnLoadCallback(drawChart);
   function drawChart() {
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'From');
    data.addColumn('string', 'To');
    data.addColumn('number', 'interest');
    data.addRows([ 							//배열로 받아서 반복문 돌리면 코드양을 줄일 수 있다.
        [ '하하', '김기수', 5 ],
        [ '김기림', '하나둘', 1 ],
        [ '김기림', '양치기', 1 ],
        [ '김기림', '잉글이', 1 ],
        [ '캐니', '김기수', 1 ],
        [ '캐니', '하나둘', 5 ],
        [ '캐니', '잉글이', 1 ],
        [ '멕시', '김기수', 1 ],
        [ '멕시', '하나둘', 1 ],
        [ '멕시', '양치기', 5 ],
        [ '멕시', '잉글이', 1 ],
        [ '미기', '김기수', 1 ],
        [ '미기', '하나둘', 1 ],
        [ '미기', '양치기', 1 ],
        [ '미기', '잉글이', 5 ],
        [ '김기수', '앙골', 2 ],
        [ '김기수', '세네', 1 ],
        [ '김기수', '모콜', 1 ],
        [ '김기수', '아파치', 3 ],
        [ '하나둘', '앙골', 1 ],
        [ '하나둘', '세네', 3 ],
        [ '하나둘', '김이니', 3 ],
        [ '하나둘', '모콜', 3 ],
        [ '하나둘', '아파치', 1 ],
        [ '양치기', '세네', 1 ],
        [ '양치기', '모콜', 3 ],
        [ '양치기', '아파치', 1 ],
        [ '잉글이', '앙골', 1 ],
        [ '잉글이', '세네', 1 ],
        [ '잉글이', '모콜', 2 ],
        [ '잉글이', '아파치', 7 ],
        [ '아파치', '음악', 5 ],
        [ '아파치', '스파이', 1 ],
        [ '아파치', '제넬', 3 ],
        [ '앙골', '음악', 5 ],
        [ '앙골', '스파이', 1 ],
        [ '앙골', '제넬', 3 ],
        [ '세네', '음악', 5 ],
        [ '세네', '스파이', 1 ],
        [ '세네', '제넬', 3 ],
        [ '김이니', '음악', 5 ],
        [ '김이니', '스파이', 1 ],
        [ '김이니', '제넬', 3 ],
        [ '모콜', '음악', 5 ],
        [ '모콜', '스파이', 1 ],
        [ '모콜', '제넬', 3 ]
    ]);

    // Set chart options
    var options = {
      width: 900,
      sankey: {
    	  node: {
    	    label: {
    	      fontName: 'Times-Roman',
    	      fontSize: 12,
    	      color: '#000',
    	      bold: true,
    	      italic: false
    	    },
    	    interactivity: true, // Allows you to select nodes.
    	    labelPadding: 6,     // Horizontal distance between the label and the node.
    	    nodePadding: 50,     // Vertical distance between nodes.
    	    width: 80,            // Thickness of the node.
    	    colors: [
    	      '#a6cee3',         // Custom color palette for sankey nodes.
    	      '#1f78b4',         // Nodes will cycle through this palette
    	      '#b2df8a',         // giving each node its own color.
    	      '#33a02c'
    	    ]
    	  }
    	}
    };

    // Instantiate and draw our chart, passing in some options.
    var chart = new google.visualization.Sankey(document.getElementById('sankey_multiple'));
    chart.draw(data, options);
   }
</script>
</body>
</html>