<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>와이너리 지도</title>
		<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=qy9i5coeim&submodules=geocoder"></script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@400;700&family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<!-- Custom styles for this template -->
	<link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="blog.css" rel="stylesheet">
	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="../../resources/assets/favicon.ico" />
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="../../resources/css/style.css" rel="stylesheet" />
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
        		padding-top: 120px
        	}
        	/* 네비 네모 박스 */
		  #navbar-square {
		  width: 2000px;
		  height: 100px;
		  background: #BE2E22;
		}
    	</style>
	</head>
	<body>
		<!-- Navigation-->
    <div id="navbar-square" class="navbar navbar-expand-lg navbar-dark fixed-top"></div>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="/"><img src="../../resources/imag/main-logo.png" alt="..." style="width: 100px; height: 50px;"/></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars ms-1"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                    <li class="nav-item"><a class="nav-link" href="/winery/main.kw">와이너리</a></li>
                    <li class="nav-item"><a class="nav-link" href="/wine/winelist.kw">와인목록</a></li>
                    <li class="nav-item"><a class="nav-link" href="/wine/list.kw">와인설명</a></li>
                    <li class="nav-item"><a class="nav-link" href="/board/list.kw">자유게시판</a></li>
                    <li class="nav-item"><a class="nav-link" href="/tasting/list.kw">교육/시음회</a></li>
                </ul>
                    <!-- 로그인 상태에 따른 처리 -->
				<c:choose>
				    <c:when test="${loggedIn}">
				        <!-- 로그인 중인 경우에 보이는 내용 -->
				        <button type="button" class="btn btn-outline-primary me-2" onclick="window.location.href=' /user/logout.kw'">로그아웃</button>
				        <button type="button" class="btn btn-primary" onclick="window.location.href='/user/updateuser.kw'">마이페이지</button>
				    </c:when>
				    <c:otherwise>
				        <!-- 로그인 중이 아닌 경우에 보이는 내용 -->
				        <button type="button" class="btn btn-outline-primary me-2" onclick="window.location.href='/user/login.kw'">로그인</button>
				        <button type="button" class="btn btn-primary" onclick="window.location.href='/user/register.kw'">회원가입</button>
				    </c:otherwise>
				</c:choose>
            </div>
        </div>
    </nav>
        <main>
        	<h5 id="winery-categori">와이너리 지도</h5>
            <div id="map"></div>
        </main>
        <!-- Footer-->
	<footer class="footer py-4">
	    <div class="container">
	        <div class="row align-items-center">
	            <div class="col-lg-4 text-lg-start">Copyright &copy; Red Oasis 2024</div>
	            <div class="col-lg-4 my-3 my-lg-0">
	                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
	                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
	                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
	            </div>
	            <div class="col-lg-4 text-lg-end">
	                <a class="link-dark text-decoration-none me-3" href="#!">이용약관</a>
	                <a class="link-dark text-decoration-none" href="#!">개인정보처리방침</a>
	            </div>
	        </div>
	    </div>
	</footer>
	<br>
	<div class="footer-info" style="margin-left: 260px;">
	    <p style="margin-left: 280px;">
	        <span>주소 : 서울 중구 남대문로 120 대일빌딩 2층, 3층</span>
	        <span>개인정보 관리책임자 : k-와이너리</span>
	        <span>청소년보호책임자 : k-와이너리</span>
	        <span>발행.편집인 : k-와이너리</span>
	    </p>
	    <p style="margin-left: 200px;">
	        <span>㈜레드오아시스</span>
	        <span>대표이사 : k-와이너리</span>
	        <span>사업자등록번호 : 123-45-67890</span>
	        <span>레드오아시스미디어 인터넷신문등록번호 : 서울특별시 아012345</span>
	        <span>발행/등록년월일 : 2024.03.11</span></p>
	</div>
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