<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>와인 상세 정보</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@400;700&family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">
    <style>
    	body {
		    font-family: 'Open Sans', sans-serif;
		    background-color: #faf8f4;
		    color: #333;
		}
		
		h2, h3 {
		    font-family: 'Merriweather', serif;
		    color: #400d12;
		}
		
		.wine-info {
		    background-color: #fff;
		    padding: 20px;
		    border-radius: 8px;
		    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
		}
		
		.wine-comments {
		    background-color: #fff;
		    padding: 20px;
		    border-radius: 8px;
		    margin-top: 20px;
		    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
		}
		
		.btn-primary {
		    background-color: #8b2635;
		    border-color: #7b1f2d;
		}
		
		.btn-primary:hover {
		    background-color: #7b1f2d;
		}
		
		.wine-image img {
		    border-radius: 8px;
		}
		
		/* 추가적인 배경 이미지 스타일링 */
		.background-image {
		    background-image: url('wine-cellar.jpg'); /* 배경 이미지 URL 변경 필요 */
		    background-size: cover;
		    background-position: center;
		    opacity: 0.9;
		}
    
        .wine-image img {
            max-width: 100%;
            height: auto;
            border-radius: .25rem; /* Bootstrap 스타일을 따라 둥근 모서리 추가 */
        }
        .wine-comment-form textarea, .wine-comment-form button {
            width: 100%; /* 버튼을 텍스트 영역과 같은 폭으로 설정 */
            margin-top: 10px; /* 상단 여백 추가 */
        }
        .rating {
		    display: inline-block;
		}
		
		.rating label {
		    color: #ccc; /* 기본 별 색상 */
		    float: right;
		}
		
		.rating label:hover,
		.rating label:hover ~ label{
		    color: #f5ac0f; /* 마우스 오버 또는 선택된 별 색상 */
		}
		
		.rating input {
		    position: absolute;
		    top: -100px;
		}
    </style>
</head>
<body class="container mt-5">

    <button class="btn btn-danger" style="margin-bottom : 20px"
    onclick="goBack();">이전으로</button>
    <div class="row">
    
        <div class="wine-info col-md-6">
            <h2>${wine.wineName }</h2>
            <p><strong>생산지:</strong> ${wine.wineRegion }</p>
            <p><strong>와인 등급:</strong> ${wine.wineRank }</p>
            <p><strong>숙성 개월 수:</strong> ${wine.wineAging }개월</p>
            <p><strong>와인 농도:</strong> ${wine.wineABV }%</p>
            <p><strong>와인 도수:</strong> ${wine.wineTemp }%</p>
            <p><strong>가격:</strong> ${wine.winePrice }원</p>
            <p><strong>점수:</strong> ${wine.wineScore }점</p>
            <p><strong>와인 종류:</strong> ${wine.wineCategory }</p>
            <p><strong>산도:</strong> ${wine.wineAcidity }</p>
        </div>
        <div class="wine-image col-md-6">
            <img src="wine-image-url.jpg" alt="와인 이미지">
        </div>
    </div>
	<hr>
	<form action="">
	    <div class="wine-comments mt-4">
	        <h3>댓글</h3>
	        <div class="wine-comment-form mt-2">
			    <textarea class="form-control" rows="4" placeholder="댓글을 입력하세요"></textarea>
			    
			    <!-- 별점 주기 -->
			    <div class="rating mt-3">
			        <label>
			            <input type="radio" name="stars" value="5" id="stars5"/>
			            <span class="icon">★</span>
			        </label>
			        <label>
			            <input type="radio" name="stars" value="4" id="stars4"/>
			            <span class="icon">★</span>
			        </label>
			        <label>
			            <input type="radio" name="stars" value="3" id="stars3"/>
			            <span class="icon">★</span>
			        </label>
			        <label>
			            <input type="radio" name="stars" value="2" id="stars2"/>
			            <span class="icon">★</span>
			        </label>
			        <label>
			            <input type="radio" name="stars" value="1" id="stars1"/>
			            <span class="icon">★</span>
			        </label>
			    </div>
			    <button type="button" class="btn btn-primary mt-2">댓글 작성</button>
			</div>
	        <ul class="list-unstyled mt-3">
	            <!-- 댓글 리스트 -->
	            <li class="mt-2">정말 맛있는 와인이에요. - 사용자 A</li>
	            <li class="mt-2">가격 대비 훌륭합니다. - 사용자 B</li>
	            <!-- 추가 댓글 -->
	        </ul>
	    </div>
    </form>
	<script>
		function goBack() {
			window.history.back();
		}
	
		document.addEventListener("DOMContentLoaded", function() {
		    // 별점 입력 요소를 모두 가져옵니다.
		    var stars = document.querySelectorAll('.rating input[type="radio"]');
		    
		    // 각 별점 요소에 이벤트 리스너를 추가합니다.
		    stars.forEach(function(star) {
		        star.addEventListener('change', function() {
		            let score = parseInt(this.value, 10); // 선택된 별점 값을 정수로 변환
		            stars.forEach(function(innerStar) {
		                if (parseInt(innerStar.value, 10) <= score) {
		                    // 선택된 별점 값이나 그보다 낮은 값의 별은 색칠합니다.
		                    innerStar.nextElementSibling.style.color = "#f5ac0f";
		                } else {
		                    // 선택된 별점 값보다 높은 별은 원래 색상으로 돌립니다.
		                    innerStar.nextElementSibling.style.color = "#ccc";
		                }
		            });
		        });
		    });
		});
	</script>
</body>
</html>