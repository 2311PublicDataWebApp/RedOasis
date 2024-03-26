<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와인 수정</title>
<style>
.star {
  	cursor: pointer;
}

.selected {
  	color: gold;
}
</style>
</head>
<body>
	<h1>와인 수정</h1>
	<form action="/admin/winelist/update.kw" method="post" enctype="multipart/form-data">
		<fieldset>
			<input type="hidden" name="wineNo" value="${wineOne.wineNo }">
			<input type="hidden" name="imgFilename" value="${wineOne.imgFilename }"/>
			<input type="hidden" name="imgFileRename" value="${wineOne.imgFileRename }"/>
			<input type="hidden" name="imgFilePath" value="${wineOne.imgFilePath }"/>
			<input type="hidden" name="imgFileLength" value="${wineOne.imgFileLength }"/>
			사진 : <input type="file" id="reloadFile" name="reloadFile" accept="image/*">
			<img id="currentImage" src="../../../resources/buploadFiles/${wineOne.imgFileRename}" style="width: 300px; height: 300px;">
			<div id="imagePreview"></div>		
			와인 이름 : <input type="text" name="wineName" value="${wineOne.wineName}"><br>
			생산 지역 : <input type="text" name="wineRegion" value="${wineOne.wineRegion}"><br>
			도수 : <input type="number" name="wineAVB" value="${wineOne.wineAVB}">%<br>
			산도 : 	낮음<input type="radio" name="wineAcidiry" value="낮음"> 
					약간낮음<input type="radio" name="wineAcidiry" value="약간낮음"> 
					중간<input type="radio" name="wineAcidiry" value="중간"> 
					약간높음<input type="radio" name="wineAcidiry" value="약간높음"> 
					높음<input type="radio" name="wineAcidiry" value="높음"><br>
			평균 시세 : <input type="number" name="winePrice" value="${wineOne.winePrice}">원<br>
			<div class="rating" data-rating="0">
				점수 : 
				<span class="star" data-value="1">&#9733;</span>
				<span class="star" data-value="2">&#9733;</span>
				<span class="star" data-value="3">&#9733;</span>
				<span class="star" data-value="4">&#9733;</span>
				<span class="star" data-value="5">&#9733;</span>
			</div>
			<input type="hidden" name="wineScore" id="wineScore" value="${wineOne.wineScore}">
			숙성 기간 : <input type="number" name="wineAging" value="${wineOne.wineAging}">개월<br>
			음용 온도 : <input type="number" name="wineTemp" value="${wineOne.wineTemp}">℃<br>
			와인 등급 : <input type="text" name="wineRank" value="${wineOne.wineRank}"><br>
			카테고리 : 	RED<input type="radio" name="wineCategory" value="RED">
						WHITE<input type="radio" name="wineCategory" value="WHITE">
						SPARKLING<input type="radio" name="wineCategory" value="SPARKLING">
						ROSE<input type="radio" name="wineCategory" value="ROSE"><br>
			이달의 와인 :
			<c:choose>
			    <c:when test="${wineOne.wineMonth eq 'Y'}">
			        <input type="checkbox" name="wineMonth" value="Y" checked>
			    </c:when>
			    <c:otherwise>
			        <input type="checkbox" name="wineMonth" value="Y">
			    </c:otherwise>
			</c:choose>
			<input type="submit" value="수정하기">
			<input type="submit" value="삭제하기">
		</fieldset>
	</form>	
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