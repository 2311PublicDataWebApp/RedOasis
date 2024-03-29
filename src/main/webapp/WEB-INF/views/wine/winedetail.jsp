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
		.row{
			padding-top: 20px;
		}
		/* 네비 네모 박스 */
		  #navbar-square {
		  width: 2000px;
		  height: 100px;
		  background: #BE2E22;
		}
    </style>
</head>
<body class="container mt-5" id="page-top">
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
    <a href="/wine/winelist.kw"><button class="btn btn-danger" style="margin-bottom : 20px; margin-top : 100px;">
    이전으로</button></a>
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
	<form action="/wine/winedetail.kw" method="post">
	    <div class="wine-comments mt-4">
	        <h3>댓글</h3>
	        <div class="wine-comment-form mt-2">
	        	<input type="hidden" name="wineNo" value="${wine.wineNo }">
			    <textarea class="form-control" rows="4" placeholder="댓글을 입력하세요" name="commentReply"></textarea>
			    
			    <!-- 별점 주기 -->
			    <div class="rating mt-3">
			        <label>
			            <input type="radio" name="commentScore" value="5" id="stars5"/>
			            <span class="icon">★</span>
			        </label>
			        <label>
			            <input type="radio" name="commentScore" value="4" id="stars4"/>
			            <span class="icon">★</span>
			        </label>
			        <label>
			            <input type="radio" name="commentScore" value="3" id="stars3"/>
			            <span class="icon">★</span>
			        </label>
			        <label>
			            <input type="radio" name="commentScore" value="2" id="stars2"/>
			            <span class="icon">★</span>
			        </label>
			        <label>
			            <input type="radio" name="commentScore" value="1" id="stars1"/>
			            <span class="icon">★</span>
			        </label>
			    </div>
			    <button type="submit" class="btn btn-primary mt-2">댓글 작성</button>
			</div>
		</div>
	</form>
	        <ul class="list-unstyled mt-3">
	        <c:forEach var="reply" items="${wrList }" varStatus="status">
	            <li class="mt-2">
	            	${reply.commentReply} - ${reply.userId}(${reply.commentScore} 점)
	            	 <c:if test="${not empty memberId and reply.userId eq memberId}">
	            		&nbsp;<button class="btn btn-outline-danger" onclick="deleteComment(${reply.commentNo}, ${wine.wineNo })">삭제</button> <br>
	            	</c:if>
	            	작성날짜 : ${reply.commentDate} <hr>
	            </li>
	        </c:forEach>
	        </ul>
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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
    <script src="../../resources/assets/dist/js/bootstrap.bundle.min.js"></script>
	<script>
	
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
		
		function deleteComment(commentNo, wineNo) {
		    if(confirm('댓글을 삭제하시겠습니까?')) {
		        // 폼 데이터를 생성하여 commentId를 추가
		        var formData = new FormData();
		        formData.append('commentNo', commentNo);
		        formData.append('wineNo', wineNo);

		        // fetch API를 사용하여 서버에 삭제 요청
		        fetch('/wine/deleteComment.kw', {
		            method: 'POST',
		            body: formData
		        })
		        .then(response => response.json())
		        .then(data => {
		            if(data.success) {
		                // 성공적으로 삭제되면 페이지를 새로고침하거나 UI를 업데이트
		                alert('댓글이 삭제되었습니다.');
		                location.reload();
		            } else {
		                alert('댓글 삭제 실패');
		            }
		        })
		        .catch(error => {
		            console.error('Error:', error);
		        });
		    }
		}
	</script>
</body>
</html>