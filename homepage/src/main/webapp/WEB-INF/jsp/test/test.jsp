<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<title>캐논볼</title>
	<script src="/assets/js/jquery-1.11.1.js"></script>
	<script>
        var apiURL = '/devOrder/getAllItems'; // table dev_orders 에서 값을 가져오는 API
        var data= [{"ID":1,"NAME":"Tester","DEPARTMENT":"Dev","TITLE":"sample title","CONTENTS":"sample content","TYPE":0,"IMPORTANCE":"0","CREATED_AT":"2017-04-26 14:55:39","UPDATED_AT":"2017-04-27 00:00:00"},{"ID":4,"NAME":"","DEPARTMENT":"","TITLE":"smaple title2","CONTENTS":"sample content2","TYPE":null,"CREATED_AT":"2017-05-01 11:44:44","UPDATED_AT":"0000-00-00 00:00:00"}]; // 여기에 json 값을 담는다

        //table에 집어넣을 값을 정한다. col 을 추가하고 싶다면 여기에서. col name, col wodth 로 구성됨.
        var option = [
            {field:"ID",width:50},
//            {field:"DEPARTMENT", width:60},
            {field:"TITLE", width:160},
            {field:"CONTENTS", width:420}
//            {field:"IMPORTANCE",width:10}
        ];

        //data 에 json 값을 집어넣음.
        /* $.getJSON(apiURL, function ( datas ) {
            $.each( datas, function( key, val ){
                data.push( val );
            });
        }); */

        // table 에 json 으로 받은 값을 집어넣는다.
        window.onload = function() {
            var itemTable = $("#itemTable"); // id가 itemTable인 div 에 var itemTable 을 대입한다.
            var makeTable = $("<table>").appendTo(itemTable); //  itemTable 에 $("<table>") 를 추가
            makeTable.css({"border-collapse": "collapse", "border": "1px #CCC solid"});

            
            $.each(option, function (index, row) {
		        var makeTh = $("<th>").appendTo(makeTable);  ///////<----- 여기가 작동하질 않아요!
                //var makeTd = $("<td>").append(makeTh);
	            makeTh.html(row['field']);
	            makeTh.css({"width": row['width'], "border-collapse": "collapse", "border": "1px #CCC solid"});
            });

            $.each( data, function( index, row) {
                var makeTr = $("<tr>").appendTo(makeTable);
//                console.log("index : "+index);
//                console.log("row : "+ row);

                $.each( option, function( i, fieldInfo ) {
                    var makeTd = $("<td>").appendTo(makeTr);
//                    console.log("Index : "+index);
//                    console.log("Row : "+row);
//                    console.log( "i : "+i);
//                    console.log( "fieldInfo : "+fieldInfo);
//                    console.log( "fieldInfo.field : "+fieldInfo.field);
//                    console.log( "Row[Field] : "+row[fieldInfo.field]);

                    makeTd.html( row[fieldInfo.field]);
                    makeTd.css({"width": fieldInfo.width+"px", "border": "1px #CCC solid"});
                });
            });
        }

    </script>
</head>
<body>
	aaaaaaaaaaaaaaaa
	<div id="itemTable"></div>
</body>
</html>