<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<section id="location-sec">
     <div class="container">
         <div class="row">

             <div class="col-md-7 text-left" style="margin-left: 20px;">
                 <h3>(주) 경민산업</h3>
                 <br />
                 <h4>Copyright (c) (주)경민산업 CO., LTD. All Rights Reserved.</h4>
                 <h4>대표자명. 윤민호 / 대표번호. 055-583-7811</h4>
                 <h4>업종. 선박 구성부분품 제조업 / 설립. 1993-04-08</h4>
                 <h4>주소. (52060) 경상남도 함안군 함마대로 364</h4>
                 <br />
                 <!-- <a href="http://www.binarytheme.com/" target="_blank" style="color: #fff; font-size: 12px;">관계사</a> -->
             </div>
             
             <div class="col-md-4 text-center">
				<div id="map" style="width:400px;height:200px;"></div>
				<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=2fb963bdc3ef9c2a998587b903cf8e65&libraries=services"></script>
				<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = {
				        center: new daum.maps.LatLng(35.284656, 128.3114946), // 지도의 중심좌표
				        level: 5, // 지도의 확대 레벨
				        mapTypeId : daum.maps.MapTypeId.ROADMAP // 지도종류
				    }; 
		
				// 지도를 생성한다 
				var map = new daum.maps.Map(mapContainer, mapOption); 
		
				// 지도에 확대 축소 컨트롤을 생성한다
				var zoomControl = new daum.maps.ZoomControl();
		
				// 지도의 우측에 확대 축소 컨트롤을 추가한다
				map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
		
				// 지도에 마커를 생성하고 표시한다
				var marker = new daum.maps.Marker({
				    position: new daum.maps.LatLng(35.284656, 128.3114946), // 마커의 좌표
				    map: map // 마커를 표시할 지도 객체
				});
		
				// 마커 위에 표시할 인포윈도우를 생성한다
				var infowindow = new daum.maps.InfoWindow({
				    content : '<div style="padding:5px; color:black">(주)경민산업</div>' // 인포윈도우에 표시할 내용
				});
		
				// 인포윈도우를 지도에 표시한다
				infowindow.open(map, marker);
		
				// 마커에 클릭 이벤트를 등록한다 (우클릭 : rightclick)
				daum.maps.event.addListener(marker, 'click', function() {
				    //alert('마커를 클릭했습니다!');
				});
				</script>
			</div>
             
         </div>

     </div>
 </section>