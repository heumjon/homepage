<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("UTF-8"); %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">
$(function(){ 
	$("#searchButton").click(function(){ 
		//select box로 구분을 주었지만 
		//실질적으로는 내부로직에서 db조회하여 데이터가 있으면 
		//json 파싱하여 데이터 생성을 하고 
		//없으면 데이터 없음으로 파싱해야한다 
		
		//비동기 통신을 하여 json타입으로 호출한다. 
		$.ajax({ 
			url: "/test/searchList.do" , 
			type : "POST",
			dataType : 'json' , 
			contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
			success: function(data) { 
				//div태그에 html로 출력!! 
				var title = '';
				alert( data.hits.hits[0]._source.MENU_NAME );
				
				$(data.hits.hits).each(function(idx, hit) {
					title += hit._source.MENU_NAME;
				});
				$("#listLayout").html(aa);
			} 
		}); 
	});
});
</script>
</head>
<body>
	<select id="resultSelect">
		<option value="Y">성공JSON</option>
		<option value="N">실패JSON</option>
	</select>
	<input type="button" id="searchButton" value="조회" />
	<br />
	메뉴명 : <div id="listLayout"></div>
</body>
</html>

