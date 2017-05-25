<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<%@ page import="java.util.*,
				 java.io.IOException"%>
<% //out.print(new Date(new Date().getTime() + 60*60*24*1000*7));
   
%>
<html>
<head>
<title>Geocoding service</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
</head>
<body>
    <div id="floating-panel">
      <input id="address" type="text" value="Sydney, NSW">
      <input id="submit" type="button" value="Geocode">
    </div>
	
	<c:set var="today" value="<%=new java.util.Date(new java.util.Date().getTime()+1000*3600*24*7)%>" />
	<fmt:formatDate pattern="yyyy-MM-dd" value="${today}" />
    <!-- <script src="/assets/js/jquery-1.11.1.js"></script>
    <script>
	    var http = new XMLHttpRequest();
	    http.open('HEAD', 'https://source.unsplash.com/random');
	    http.onreadystatechange = function() {
	        if (this.readyState === this.DONE) {
	            //alert(this.responseURL);
	        }
	    };
	    http.send();
	</script> -->
  </body>
</html>