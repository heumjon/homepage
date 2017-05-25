<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>My first chart using FusionCharts Suite XT</title>
<script type="text/javascript" src="http://static.fusioncharts.com/code/latest/fusioncharts.js"></script>
<script type="text/javascript" src="http://static.fusioncharts.com/code/latest/themes/fusioncharts.theme.fint.js?cacheBust=56"></script>
<script type="text/javascript">
FusionCharts.ready(function(){
	    var fusioncharts = new FusionCharts({
	    type: 'column3d',
	    renderAt: 'chart-container',
	    width: '1000',
	    height: '500',
	    dataFormat: 'json',
	    insertMode: "prepend",
	    dataSource: {
	        "chart": {
	        	 "caption": "Monthly Revenue",
	             "subCaption": "Last year",
	             "xAxisName": "Month",
	             "yAxisName": "Amount (In USD)",
	             "theme": "fint",
	             "numberPrefix": "$",
	             "placevaluesInside": "1",
	             "rotatevalues": "1",
	             //Showing canvas bg to apply background color
	             "showCanvasBg": "1",
	             //Shwoing canvas base to apply base color
	             "showCanvasBase": "1",
	             //Changing canvas base depth
	             "canvasBaseDepth": "14",
	             //Changing canvas background depth
	             "canvasBgDepth": "5",
	             //Changing canvas base color
	             "canvasBaseColor": "#aaaaaa",
	             //Changing canvas background color
	             "canvasBgColor": "#eeeeee"
	        },
	
	        "data": [{
	            "label": "Jan",
	            "value": "420000"
	        }, {
	            "label": "Feb",
	            "value": "810000"
	        }, {
	            "label": "Mar",
	            "value": "720000"
	        }, {
	            "label": "Apr",
	            "value": "550000"
	        }, {
	            "label": "May",
	            "value": "910000"
	        }, {
	            "label": "Jun",
	            "value": "510000"
	        }, {
	            "label": "Jul",
	            "value": "680000"
	        }, {
	            "label": "Aug",
	            "value": "620000"
	        }, {
	            "label": "Sep",
	            "value": "610000"
	        }, {
	            "label": "Oct",
	            "value": "490000"
	        }, {
	            "label": "Nov",
	            "value": "900000"
	        }, {
	            "label": "Dec",
	            "value": "730000"
	        }]
	    },
	
	    "events": {
	        "beforeRender": function(evt, args) {
	            var controllers = evt.sender._controllers,
	                radio = [],
	                radElem,
	                val;
	
	            if (!controllers) {
	                controllers = evt.sender._controllers = document.createElement("div");
	                controllers.innerHTML = "<form><label style='display:inline;margin-bottom:0;'><input name='chart-type' id='change-chart-type-line' type='radio' value='line' /> Line chart</label>&nbsp;&nbsp;<input name='chart-type' id='change-chart-type-bar' type='radio' value='bar2d' />&nbsp;<label for='change-chart-type-bar' style='display:inline;margin-bottom:0;'>Bar chart</label>&nbsp;&nbsp;<input name='chart-type' id='change-chart-type-column' type='radio' value='column3d' checked='true' />&nbsp;<label for='change-chart-type-column' style='display:inline;margin-bottom:0;'>Column chart</label></form>";
	                controllers.style.cssText = "text-align: left;";
	                var clearText = args.container.firstChild;
	                while (clearText) {
	                    ((clearText.nodeType === 3) || (clearText.nodeName === "#text")) && clearText.parentNode.removeChild(clearText);
	                    clearText = clearText.nextSibling;
	                }
	                args.container.appendChild(controllers);
	
	                radio = controllers.getElementsByTagName('input');
	                for (var i = 0; i < radio.length; i++) {
	                    radElem = radio[i];
	                    if (radElem.type === 'radio') {
	                        radElem.onchange = function() {
	                            val = this.getAttribute('value');
	                            val && evt.sender.chartType(val);
	                        };
	                    }
	                }
	            }
	        }
	    }
	});
    fusioncharts.render();
});
</script>
</head>
<body>
  <div id="chart-container">FusionCharts XT will load here!</div>
</body>
</html>