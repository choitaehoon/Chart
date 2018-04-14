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
       [ '하하', 'Portugal', 5 ],
       [ 'Brazil', 'France', 1 ],
       [ 'Brazil', 'Spain', 1 ],
       [ 'Brazil', 'England', 1 ],
       [ 'Canada', 'Portugal', 1 ],
       [ 'Canada', 'France', 5 ],
       [ 'Canada', 'England', 1 ],
       [ 'Mexico', 'Portugal', 1 ],
       [ 'Mexico', 'France', 1 ],
       [ 'Mexico', 'Spain', 5 ],
       [ 'Mexico', 'England', 1 ],
       [ 'USA', 'Portugal', 1 ],
       [ 'USA', 'France', 1 ],
       [ 'USA', 'Spain', 1 ],
       [ 'USA', 'England', 5 ],
       [ 'Portugal', 'Angola', 2 ],
       [ 'Portugal', 'Senegal', 1 ],
       [ 'Portugal', 'Morocco', 1 ],
       [ 'Portugal', 'South Africa', 3 ],
       [ 'France', 'Angola', 1 ],
       [ 'France', 'Senegal', 3 ],
       [ 'France', 'Mali', 3 ],
       [ 'France', 'Morocco', 3 ],
       [ 'France', 'South Africa', 1 ],
       [ 'Spain', 'Senegal', 1 ],
       [ 'Spain', 'Morocco', 3 ],
       [ 'Spain', 'South Africa', 1 ],
       [ 'England', 'Angola', 1 ],
       [ 'England', 'Senegal', 1 ],
       [ 'England', 'Morocco', 2 ],
       [ 'England', 'South Africa', 7 ],
       [ 'South Africa', 'China', 5 ],
       [ 'South Africa', 'India', 1 ],
       [ 'South Africa', 'Japan', 3 ],
       [ 'Angola', 'China', 5 ],
       [ 'Angola', 'India', 1 ],
       [ 'Angola', 'Japan', 3 ],
       [ 'Senegal', 'China', 5 ],
       [ 'Senegal', 'India', 1 ],
       [ 'Senegal', 'Japan', 3 ],
       [ 'Mali', 'China', 5 ],
       [ 'Mali', 'India', 1 ],
       [ 'Mali', 'Japan', 3 ],
       [ 'Morocco', 'China', 5 ],
       [ 'Morocco', 'India', 1 ],
       [ 'Morocco', 'Japan', 3 ]
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