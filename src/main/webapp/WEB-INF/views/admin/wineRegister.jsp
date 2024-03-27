<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와인 등록</title>
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
	        <h2 class="mb-4 wine-theme">와인 등록</h2>
	        <form action="/admin/winelist/register.kw" method="post" enctype="multipart/form-data">
	            <div class="form-group">
	                <label for="uploadFile">사진</label>
	                <input type="file" id="uploadFile" name="uploadFile" accept="image/*">
	                <div id="imagePreview"></div>       
	            </div>
	            <div class="form-group">
	                <label for="wineName">와인 이름</label>
	                <input type="text" name="wineName" class="form-control">
	            </div>
	            <div class="form-group">
	                <label for="wineRegion">생산 지역</label>
	                <input type="text" name="wineRegion" class="form-control">
	            </div>
	            <div class="form-group">
	                <label for="wineAVB">도수</label>
	                <input type="number" name="wineAVB" class="form-control">
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
	                <input type="number" name="winePrice" class="form-control">
	            </div>
	            <div class="rating" data-rating="0">
	                <label for="wineScore">점수</label><br>
	                <span class="star" data-value="1">&#9733;</span>
	                <span class="star" data-value="2">&#9733;</span>
	                <span class="star" data-value="3">&#9733;</span>
	                <span class="star" data-value="4">&#9733;</span>
	                <span class="star" data-value="5">&#9733;</span>
	                <input type="hidden" name="wineScore" id="wineScore" value="0">
	            </div>
	            <div class="form-group">
	                <label for="wineAVB">숙성 기간</label>
	                <input type="number" name="wineAging" class="form-control">
	            </div>
	            <div class="form-group">
	                <label for="wineTemp">음용 온도</label>
	                <input type="number" name="wineTemp" class="form-control">
	            </div>
	            <div class="form-group">
	                <label for="wineRank">와인 등급</label>
	                <input type="text" name="wineRank" class="form-control">
	            </div>    
	            <div class="form-group">
	                <label>카테고리</label><br>
	                <label><input type="radio" name="wineCategory" value="RED"> RED</label>
	                <label><input type="radio" name="wineCategory" value="WHITE"> WHITE</label>
	                <label><input type="radio" name="wineCategory" value="SPARKLING"> SPARKLING</label>
	                <label><input type="radio" name="wineCategory" value="ROSE"> ROSE</label>
	            </div>                    
	            이달의 와인 : <input type="checkbox" name="wineMonth" value="Y"><br><br>
	            <button type="submit" class="btn btn-wine-theme">등록하기</button>
	            <button type="submit" class="btn btn-wine-theme">작성 취소</button>
	        </form>
	    </div>
	</div>
	
<!-- 	<h1>와인 등록</h1> -->
<!-- 	<form action="/admin/winelist/register.kw" method="post" enctype="multipart/form-data"> -->
<!-- 		<fieldset> -->
<!-- 			<legend></legend> -->
<!-- 			사진 : <input type="file" id="uploadFile" name="uploadFile" accept="image/*"> -->
<!-- 			<div id="imagePreview"></div>		 -->
<!-- 			와인 이름 : <input type="text" name="wineName"><br> -->
<!-- 			생산 지역 : <input type="text" name="wineRegion"><br> -->
<!-- 			도수 : <input type="number" name="wineAVB">%<br> -->
<!-- 			산도 : 	낮음<input type="radio" name="wineAcidiry" value="낮음">  -->
<!-- 					약간낮음<input type="radio" name="wineAcidiry" value="약간낮음">  -->
<!-- 					중간<input type="radio" name="wineAcidiry" value="중간">  -->
<!-- 					약간높음<input type="radio" name="wineAcidiry" value="약간높음">  -->
<!-- 					높음<input type="radio" name="wineAcidiry" value="높음"><br> -->
<!-- 			평균 시세 : <input type="number" name="winePrice">원<br> -->
<!-- 			<div class="rating" data-rating="0"> -->
<!-- 				점수 :  -->
<!-- 				<span class="star" data-value="1">&#9733;</span> -->
<!-- 				<span class="star" data-value="2">&#9733;</span> -->
<!-- 				<span class="star" data-value="3">&#9733;</span> -->
<!-- 				<span class="star" data-value="4">&#9733;</span> -->
<!-- 				<span class="star" data-value="5">&#9733;</span> -->
<!-- 			</div> -->
<!-- 			<input type="hidden" name="wineScore" id="wineScore" value="0"> -->
<!-- 			숙성 기간 : <input type="number" name="wineAging">개월<br> -->
<!-- 			음용 온도 : <input type="number" name="wineTemp">℃<br> -->
<!-- 			와인 등급 : <input type="text" name="wineRank"><br> -->
<!-- 			카테고리 : 	RED<input type="radio" name="wineCategory" value="RED"> -->
<!-- 						WHITE<input type="radio" name="wineCategory" value="WHITE"> -->
<!-- 						SPARKLING<input type="radio" name="wineCategory" value="SPARKLING"> -->
<!-- 						ROSE<input type="radio" name="wineCategory" value="ROSE"><br> -->
<!-- 			이달의 와인 : <input type="checkbox" name="wineMonth" value="Y"><br> -->
<!-- 			<input type="submit" value="등록하기"> -->
<!-- 			<input type="submit" value="작성 취소"> -->
<!-- 		</fieldset> -->
<!-- 	</form> -->
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
	
	// 이미지 처리
	document.getElementById('uploadFile').addEventListener('change', function(event) {
	    var reader = new FileReader();
	    reader.onload = function() {
	        var imagePreview = document.getElementById('imagePreview');
	        imagePreview.innerHTML = '<img src="' + reader.result + '" style="width: 300px; height: 300px;" />';
	    }
	    reader.readAsDataURL(event.target.files[0]);
	});
	</script>
</body>
</html>