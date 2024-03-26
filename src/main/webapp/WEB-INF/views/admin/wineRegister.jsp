<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와인 등록</title>
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
	<h1>와인 등록</h1>
	<form action="/admin/winelist/register.kw" method="post" enctype="multipart/form-data">
		<fieldset>
			<legend></legend>
			사진 : <input type="file" id="uploadFile" name="uploadFile" accept="image/*">
			<div id="imagePreview"></div>		
			와인 이름 : <input type="text" name="wineName"><br>
			생산 지역 : <input type="text" name="wineRegion"><br>
			도수 : <input type="number" name="wineAVB">%<br>
			산도 : 	낮음<input type="radio" name="wineAcidiry" value="낮음"> 
					약간낮음<input type="radio" name="wineAcidiry" value="약간낮음"> 
					중간<input type="radio" name="wineAcidiry" value="중간"> 
					약간높음<input type="radio" name="wineAcidiry" value="약간높음"> 
					높음<input type="radio" name="wineAcidiry" value="높음"><br>
			평균 시세 : <input type="number" name="winePrice">원<br>
			<div class="rating" data-rating="0">
				점수 : 
				<span class="star" data-value="1">&#9733;</span>
				<span class="star" data-value="2">&#9733;</span>
				<span class="star" data-value="3">&#9733;</span>
				<span class="star" data-value="4">&#9733;</span>
				<span class="star" data-value="5">&#9733;</span>
			</div>
			<input type="hidden" name="wineScore" id="wineScore" value="0">
			숙성 기간 : <input type="number" name="wineAging">개월<br>
			음용 온도 : <input type="number" name="wineTemp">℃<br>
			와인 등급 : <input type="text" name="wineRank"><br>
			카테고리 : 	RED<input type="radio" name="wineCategory" value="RED">
						WHITE<input type="radio" name="wineCategory" value="WHITE">
						SPARKLING<input type="radio" name="wineCategory" value="SPARKLING">
						ROSE<input type="radio" name="wineCategory" value="ROSE"><br>
			이달의 와인 : <input type="checkbox" name="wineMonth" value="Y"><br>
			<input type="submit" value="등록하기">
			<input type="submit" value="작성 취소">
		</fieldset>
	</form>	
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