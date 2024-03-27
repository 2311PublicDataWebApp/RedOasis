<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>와이너리 지도</title>
		<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=qy9i5coeim&submodules=geocoder"></script>
		<style>
			body {
			        font-family: 'Noto Sans KR', sans-serif;
			        background-color: #f5f5f5;
			        color: #333;
			        line-height: 1.6;
			 }
        	/* 이 부분은 지도를 감싸는 div의 크기를 조정하기 위한 스타일입니다. */
        	#map {
        	    width: 50%;
            	height: 650px;
            	margin: 0 auto;
        	}
        	#winery-categori{
        		margin-left: 500px;
        	}
    	</style>
	</head>
	<body>
		<header></header>
        <main>
        	<h5 id="winery-categori">와이너리</h5>
            <div id="map"></div>
        </main>
        <footer></footer>
        <script>
		    var mapOptions = {
		        center: new naver.maps.LatLng(35.9078, 127.7669), // 대한민국 중심 좌표
		        zoom: 7 // 지도 초기 줌 레벨
		    };
		    var map = new naver.maps.Map('map', mapOptions);
  		    <c:forEach items="${address}" var="addr" varStatus="loop">
 			    	var address = "${addr}"; // 변환할 주소 텍스트
 			   		naver.maps.Service.geocode({
	 		            query: address
	 		        }, function(status, response) {
	 		        	
	 		            if (status === naver.maps.Service.Status.ERROR) {
	 		                console.error('주소를 변환하는 도중 오류가 발생했습니다.');
	 		                return;
	 		            }
	
	 		            var result = response.v2; // v2는 변환 결과를 의미하는 객체
	 		            var items = result.addresses; // 변환된 좌표값이 담긴 배열
	 		            // 변환된 좌표값이 있는지 확인 후 출력
	 		            if (items.length > 0) {
			                var location = new naver.maps.LatLng(items[0].y, items[0].x); // 첫 번째 결과 사용
			                console.log('변환된 좌표값: ' + location.toString());
			                var markerPosition = new naver.maps.LatLng(items[0].y, items[0].x);
			                var marker = new naver.maps.Marker({
			                    position: markerPosition,
			                    map: map
			                });
			                
			                <c:set var="index" value="${loop.index}" />
			                var contentString = '<div style="padding:10px;">${wineryName[index]}</div>'; // 마커에 표시될 내용
			                var infowindow = new naver.maps.InfoWindow({
			                    content: contentString,
			                    maxWidth: 200 // 최대 너비 설정 (선택사항)
			                });
			                
			                 // 마커에 마우스 올렸을 때 이벤트
			                naver.maps.Event.addListener(marker, 'mouseover', function() {
			                    infowindow.open(map, marker); // 정보 창 열기
			                });

			                    // 마커에서 마우스 내렸을 때 이벤트
			                naver.maps.Event.addListener(marker, 'mouseout', function() {
			                    infowindow.close(); // 정보 창 닫기
			                });
			                
			             	// 마커 클릭 이벤트 리스너 추가
			             	<c:set var="index" value="${loop.index}" />
			                naver.maps.Event.addListener(marker, 'click', function() {
			                    window.location.href = '/winery/detail.kw?wineryNo=${wineryNoArr[index]}'; // 예: 'https://www.example.com'
			                });
			            } else {
			                console.error('변환된 좌표값이 없습니다.');
			            }
	 		        });
  			</c:forEach>
		</script>
	</body>
</html>