<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와인 수정</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f5f5f5;
        }
        .wine-theme {
            background-color: #720026; /* 부르고뉴 색상 */
            color: #fff;
        }
        h2, label {
            font-family: 'Noto Serif KR', serif;
        }
        .form-control, .form-control-file, .btn {
            border-radius: 0;
        }
        .btn-wine-theme {
            background-color: #4a001f; /* 더 진한 부르고뉴 색상 */
            color: #fff;
            border: none;
        }
        .btn-wine-theme:hover {
            background-color: #370017;
        }
        .form-section {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0,0,0,.1);
        }
		.star {
		  	cursor: pointer;
		}
		
		.selected {
		  	color: gold;
		}
	</style>
</head>
<body>
	<div class="container mt-5">
	    <div class="form-section">
	        <h2 class="mb-4 wine-theme">와인 수정</h2>
	        <form action="/admin/winelist/update.kw" method="post" enctype="multipart/form-data">
	            <fieldset>
	                <input type="hidden" name="wineNo" value="${wineOne.wineNo }">
	                <input type="hidden" name="imgFilename" value="${wineOne.imgFilename }"/>
	                <input type="hidden" name="imgFileRename" value="${wineOne.imgFileRename }"/>
	                <input type="hidden" name="imgFilePath" value="${wineOne.imgFilePath }"/>
	                <input type="hidden" name="imgFileLength" value="${wineOne.imgFileLength }"/>
	                <div class="form-group">
	                    <label for="reloadFile">사진</label>
	                    <input type="file" id="reloadFile" name="reloadFile" accept="image/*">
	                    <img id="currentImage" src="../../../resources/buploadFiles/${wineOne.imgFileRename}" style="width: 300px; height: 300px;">
	                    <div id="imagePreview"></div>     
	                </div>
	                <div class="form-group">
	                    <label for="wineName">와인 이름</label>
	                    <input type="text" name="wineName" class="form-control" value="${wineOne.wineName}">
	                </div>
	                <div class="form-group">
	                    <label for="wineRegion">생산 지역</label>
	                    <input type="text" name="wineRegion" class="form-control" value="${wineOne.wineRegion}">
	                </div>
	                <div class="form-group">
	                    <label for="wineAVB">도수</label>
	                    <input type="number" name="wineAVB" class="form-control" value="${wineOne.wineAVB}">
	                </div>
	                <div class="form-group">
	                    <label>산도</label><br>
	                    <label><input type="radio" name="wineAcidiry" value="낮음"> 낮음</label>
	                    <label><input type="radio" name="wineAcidiry" value="약간낮음"> 약간낮음</label>
	                    <label><input type="radio" name="wineAcidiry" value="중간"> 중간</label>
	                    <label><input type="radio" name="wineAcidiry" value="약간높음"> 약간높음</label>
	                    <label><input type="radio" name="wineAcidiry" value="높음"> 높음</label>
	                </div>
	                <!-- 나머지 입력 요소들을 여기에 추가 -->
	                <div class="form-group">
	                    <label for="winePrice">평균 시세</label>
	                    <input type="number" name="winePrice" class="form-control" value="${wineOne.winePrice}">
	                </div>
	                <div class="rating" data-rating="0">
	                    <label for="wineScore">점수</label><br>
	                    <span class="star" data-value="1">&#9733;</span>
	                    <span class="star" data-value="2">&#9733;</span>
	                    <span class="star" data-value="3">&#9733;</span>
	                    <span class="star" data-value="4">&#9733;</span>
	                    <span class="star" data-value="5">&#9733;</span>
	                    <input type="hidden" name="wineScore" id="wineScore" value="${wineOne.wineScore}">
	                </div>
	                <!-- 나머지 입력 요소들을 여기에 추가 -->
	                <div class="form-group">
	                    <label for="wineAging">숙성 기간</label>
	                    <input type="number" name="wineAging" class="form-control" value="${wineOne.wineAging}">개월
	                </div>
	                <div class="form-group">
	                    <label for="wineTemp">음용 온도</label>
	                    <input type="number" name="wineTemp" class="form-control" value="${wineOne.wineTemp}">℃
	                </div>
	                <div class="form-group">
	                    <label for="wineRank">와인 등급</label>
	                    <input type="text" name="wineRank" class="form-control" value="${wineOne.wineRank}">
	                </div>    
	                <div class="form-group">
	                    <label>카테고리</label><br>
	                    <label><input type="radio" name="wineCategory" value="RED"> RED</label>
	                    <label><input type="radio" name="wineCategory" value="WHITE"> WHITE</label>
	                    <label><input type="radio" name="wineCategory" value="SPARKLING"> SPARKLING</label>
	                    <label><input type="radio" name="wineCategory" value="ROSE"> ROSE</label>
	                </div>                    
	                이달의 와인 :
	                <c:choose>
	                    <c:when test="${wineOne.wineMonth eq 'Y'}">
	                        <input type="checkbox" name="wineMonth" value="Y" checked>
	                    </c:when>
	                    <c:otherwise>
	                    	<input type="checkbox" name="wineMonth" value="Y">
	                    </c:otherwise>
	                </c:choose><br><br>
	                <button type="submit" class="btn btn-wine-theme">수정하기</button>
	                <button type="submit" class="btn btn-wine-theme">삭제하기</button>
	            </fieldset>
	        </form>
	    </div>
	</div>
                       



<!-- 	<h1>와인 수정</h1> -->
<!-- 	<form action="/admin/winelist/update.kw" method="post" enctype="multipart/form-data"> -->
<!-- 		<fieldset> -->
<%-- 			<input type="hidden" name="wineNo" value="${wineOne.wineNo }"> --%>
<%-- 			<input type="hidden" name="imgFilename" value="${wineOne.imgFilename }"/> --%>
<%-- 			<input type="hidden" name="imgFileRename" value="${wineOne.imgFileRename }"/> --%>
<%-- 			<input type="hidden" name="imgFilePath" value="${wineOne.imgFilePath }"/> --%>
<%-- 			<input type="hidden" name="imgFileLength" value="${wineOne.imgFileLength }"/> --%>
<!-- 			사진 : <input type="file" id="reloadFile" name="reloadFile" accept="image/*"> -->
<%-- 			<img id="currentImage" src="../../../resources/buploadFiles/${wineOne.imgFileRename}" style="width: 300px; height: 300px;"> --%>
<!-- 			<div id="imagePreview"></div>		 -->
<%-- 			와인 이름 : <input type="text" name="wineName" value="${wineOne.wineName}"><br> --%>
<%-- 			생산 지역 : <input type="text" name="wineRegion" value="${wineOne.wineRegion}"><br> --%>
<%-- 			도수 : <input type="number" name="wineAVB" value="${wineOne.wineAVB}">%<br> --%>
<!-- 			산도 : 	낮음<input type="radio" name="wineAcidiry" value="낮음">  -->
<!-- 					약간낮음<input type="radio" name="wineAcidiry" value="약간낮음">  -->
<!-- 					중간<input type="radio" name="wineAcidiry" value="중간">  -->
<!-- 					약간높음<input type="radio" name="wineAcidiry" value="약간높음">  -->
<!-- 					높음<input type="radio" name="wineAcidiry" value="높음"><br> -->
<%-- 			평균 시세 : <input type="number" name="winePrice" value="${wineOne.winePrice}">원<br> --%>
<!-- 			<div class="rating" data-rating="0"> -->
<!-- 				점수 :  -->
<!-- 				<span class="star" data-value="1">&#9733;</span> -->
<!-- 				<span class="star" data-value="2">&#9733;</span> -->
<!-- 				<span class="star" data-value="3">&#9733;</span> -->
<!-- 				<span class="star" data-value="4">&#9733;</span> -->
<!-- 				<span class="star" data-value="5">&#9733;</span> -->
<!-- 			</div> -->
<%-- 			<input type="hidden" name="wineScore" id="wineScore" value="${wineOne.wineScore}"> --%>
<%-- 			숙성 기간 : <input type="number" name="wineAging" value="${wineOne.wineAging}">개월<br> --%>
<%-- 			음용 온도 : <input type="number" name="wineTemp" value="${wineOne.wineTemp}">℃<br> --%>
<%-- 			와인 등급 : <input type="text" name="wineRank" value="${wineOne.wineRank}"><br> --%>
<!-- 			카테고리 : 	RED<input type="radio" name="wineCategory" value="RED"> -->
<!-- 						WHITE<input type="radio" name="wineCategory" value="WHITE"> -->
<!-- 						SPARKLING<input type="radio" name="wineCategory" value="SPARKLING"> -->
<!-- 						ROSE<input type="radio" name="wineCategory" value="ROSE"><br> -->
<!-- 			이달의 와인 : -->
<%-- 			<c:choose> --%>
<%-- 			    <c:when test="${wineOne.wineMonth eq 'Y'}"> --%>
<!-- 			        <input type="checkbox" name="wineMonth" value="Y" checked> -->
<%-- 			    </c:when> --%>
<%-- 			    <c:otherwise> --%>
<!-- 			        <input type="checkbox" name="wineMonth" value="Y"> -->
<%-- 			    </c:otherwise> --%>
<%-- 			</c:choose> --%>
<!-- 			<input type="submit" value="수정하기"> -->
<!-- 			<input type="submit" value="삭제하기"> -->
<!-- 		</fieldset> -->
<!-- 	</form>	 -->
    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
	document.getElementById('find-address').addEventListener('click', function() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 사용자가 주소를 선택하면, 선택한 주소 정보를 입력 필드에 채웁니다.
	            var addr = ''; // 주소 변수
	            
	            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져옵니다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했다면
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했다면(J)
	                addr = data.jibunAddress;
	            }
	            
	            // 주소 입력 필드에 값을 채웁니다.
	            document.getElementById('address').value = addr;
	        }
	    }).open();
	});
	</script>
	<script>
	
	// 산도 선택 처리
	var wineAcidityValue = "${wineOne.wineAcidity}";
	var radioButtons = document.querySelectorAll('input[name="wineAcidiry"]');
	radioButtons.forEach(function(radioButton) {
	    if (radioButton.value === wineAcidityValue) {
	        radioButton.checked = true;
	    }
	});
	// 카테고리 선택 처리
	var wineCategoryValue = "${wineOne.wineCategory}";
	var radioButtons = document.querySelectorAll('input[name="wineCategory"]');
	radioButtons.forEach(function(radioButton) {
	    if (radioButton.value === wineCategoryValue) {
	        radioButton.checked = true;
	    }
	});
	// 별점 선택 처리
	var wineScoreValue = parseInt("${wineOne.wineScore}");
	var stars = document.querySelectorAll('.star');
	stars.forEach(function(star, index) {
	    if (index < wineScoreValue) {
	        star.classList.add('selected');
	    }
	});

	// 별점 처리
	document.addEventListener("DOMContentLoaded", function() {
			const stars = document.querySelectorAll('.star');
			const ratingInput = document.getElementById('wineScore');
			
			stars.forEach(star => {
		    star.addEventListener('click', () => {
				const value = parseInt(star.getAttribute('data-value'));
				ratingInput.value = value;
				setRating(value);
			  	});
			});
		function setRating(value) {
		    stars.forEach(star => {
			      if (parseInt(star.getAttribute('data-value')) <= value) {
			        star.classList.add('selected');
			      } else {
			        star.classList.remove('selected');
			      }
		    });
	  	}
	});
	// 별점 처리
	document.addEventListener("DOMContentLoaded", function() {
			const stars = document.querySelectorAll('.star');
			const ratingInput = document.getElementById('wineScore');
			
			stars.forEach(star => {
		    star.addEventListener('click', () => {
				const value = parseInt(star.getAttribute('data-value'));
				ratingInput.value = value;
				setRating(value);
			  	});
			});
		function setRating(value) {
		    stars.forEach(star => {
			      if (parseInt(star.getAttribute('data-value')) <= value) {
			        star.classList.add('selected');
			      } else {
			        star.classList.remove('selected');
			      }
		    });
	  	}
	});
	
	// 이미지 선택,새 이미지 처리
	document.getElementById('reloadFile').addEventListener('change', function(event) {
	    var file = event.target.files[0]; // 선택한 파일 가져오기
	    var reader = new FileReader(); // 파일을 읽기 위한 FileReader 객체 생성
	    
	    reader.onload = function() {
	        var currentImage = document.getElementById('currentImage');
	        currentImage.src = reader.result; // 새로운 이미지로 변경
	    }
	    
	    // 파일 읽기 시작
	    reader.readAsDataURL(file);
	});
    </script>
</body>
</html>