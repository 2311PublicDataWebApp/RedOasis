<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>와이너리</title>
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
		<style type="text/css">
			 body {
			        font-family: 'Noto Sans KR', sans-serif;
			        background-color: #f5f5f5;
			        color: #333;
			        line-height: 1.6;
			 }
			 #section{
			 	padding: 0;
			 	padding-top: 9em;
			 }
			    #winery-info {
			        background-color: #ffffff;
			        border: 1px solid #ddd;
			        border-radius: 8px;
			        padding: 20px;
			        max-width: 600px;
			        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
			        display: inline-block;
			    }
			    #winery-name h1 {
			        color: #700;
			        margin-bottom: 10px;
			    }
			    #winery-info li {
			        list-style: none;
			        margin-bottom: 10px;
			    }
			    .submenu {
			        padding-left: 20px;
			    }
			    .submenu li {
			        list-style-type: circle;
			        color: #555;
			    }
			    a {
			        color: #0073e6;
			        text-decoration: none;
			    }
			    a:hover {
			        text-decoration: underline;
			    }
			@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');
			#winery-categori{
        		margin-left: 500px;
        		display: inline;
        	}
        	#back{
        		float: right;
        		margin-right: 500px;
        	}
        	
		    #text{
		    }
		     .card-header {
			     background-color: #ff0000; /* 더 진한 빨간색으로 조정 */
			 }
			 .list-group-item {
			     border-left: 3px solid #ff0000; /* 댓글 항목 왼쪽에 빨간색 테두리 추가 */
			 }
			 .winery-display {
				    display: flex;
				    align-items: flex-start; /* 상단 정렬 */
				    justify-content: center; /* 중앙 정렬 */
				    gap: 20px; /* 사진과 정보 사이의 간격 */
				}
				.winery-image {
					margin-left: 500px;
				    height: 400px; /* 이미지의 세로 크기 */
				    width: 400px; /* 이미지의 가로 크기 */
				    object-fit: cover; /* 이미지 비율 유지하면서 크기 조정 */
				}
			
				/* 와이너리 설명 섹션 스타일 */
				.d-flex.justify-content-center {
				    /* 세로 중앙 정렬이 필요하지 않으므로 align-items는 생략 */
				    background-color: #fff; /* 밝은 배경색 */
				    padding: 40px; /* 내부 여백 */
				    margin: 20px 0; /* 상하 여백 */
				    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
				    border: 2px solid #8B0000; /* 진한 빨간색 테두리 */
				    border-radius: 15px; /* 모서리 둥글게 */
				    width: 700px;
				    display: flex; /* Flexbox 레이아웃 사용 */
				    justify-content: center; /* 가로 방향 가운데 정렬 */
				    margin: 0 auto;
				}
				#winery-description {
				    max-width: 600px; /* 최대 너비 설정 */
				    margin-left: auto;
				    margin-right: auto;
				    /* 필요한 추가 스타일 */
				}
				
				#text {
				    color: #8B0000; /* 진한 빨간색 텍스트 */
				    font-size: 18px; /* 폰트 크기 */
				    line-height: 1.6; /* 줄 간격 */
				}
		</style>
	</head>
	<body>
	<jsp:include page="../../inc/header.jsp"></jsp:include>
		<main>
		<section id="section">
			<span>
				<h5 id="winery-categori">와이너리>상세보기</h5>
			</span>
			<span>
				<a href="/winery/main.kw"><button id="back" type="button" class="btn btn-primary" >이전으로</button></a>
			</span>
		</section>
		<section class="winery-display" id="section">
		    <img alt="와이너리" src="${winery.imgFilePath }" class="winery-image">
		    <ul id="winery-info">
		        <li id="winery-name"><h1>${winery.wineryName}</h1></li>
		        <li>주소 : ${winery.wineryAddress}</li>
		        <li>
		            대표 생산 와인
		            <ul class="submenu">
		            <c:forEach items="${madeWines}" var="madeWine" varStatus="i">
		                <li>${madeWine }</li>
		            </c:forEach>
		            </ul>
		        </li>
		        <li>공식 홈페이지 : <a href="http://${winery.wineryWebAddress}" target="_blank">${winery.wineryWebAddress}</a></li>
		        <li>전화번호 : ${winery.wineryPhone}</li>
		    </ul>
		</section>
		<section class="d-flex justify-content-center">
		    <div id="winery-description">
		        <div id="text">
		        	${winery.wineryDescription}
		        </div>
		    </div>
		</section>
				
		<section>
			<hr>
				<div class="container mt-5">
					
				<!-- 댓글 입력창 -->
				<form action="/winery/register.kw" method="post">
					<div class="mt-4">
					<input type="hidden" name="wineryNo" value="${winery.wineryNo }">
					    <div class="form-group">
					        <label for="commentContent">댓글</label>
					        <textarea class="form-control" id="commentContent" rows="3" placeholder="댓글을 입력하세요"
					        name="replyComment"></textarea>
					    </div>
					    <button  style="margin: 10px;" class="btn btn-danger" id="submitComment" type="submit">작성</button>
					</div>
				</form>
				    <div class="card">
				        <div class="card-header bg-danger text-white">
				            댓글
				        </div>
				        <form action="/winery/delete.kw" method="post">
				        <input type="hidden" name="wineryNo" value="${winery.wineryNo }">
					        <ul class="list-group list-group-flush">
						        <c:forEach var="reply" items="${wrList }" varStatus="status">
						            <li class="list-group-item">
						                <h5 class="card-title">작성자: ${reply.userId }</h5>
						                <p class="card-text">${reply.replyComment }</p>
						                <footer class="blockquote-footer">
						                	작성 날짜: ${reply.replyDate }
						                	<c:if test="${not empty memberId and reply.userId eq memberId}">
							                	&nbsp;&nbsp;
							                	<button class="btn btn-outline-danger" type="submit"
							                	name="replyNo" value="${reply.replyNo }">삭제</button>
						                	</c:if>
						                </footer>
						            </li>
						        </c:forEach>
					        </ul>
				        </form>
				    </div>
						
				</div>
			
		</section>
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
			
			document.getElementById('submitComment').addEventListener('click', function() {
			    var author = document.getElementById('commentAuthor').value;
			    var content = document.getElementById('commentContent').value;
			    console.log('작성자:', author, '내용:', content);
			    
			    // 여기에 서버로 데이터를 전송하는 코드를 추가할 수 있습니다.
			});
			
// 			var originalText = "${winery.wineryDescription}";
			
// 			// 100자마다 개행을 추가하는 함수
// 		    function addNewLines(text, everyNChars) {
// 		        var result = '';
// 		        while (text.length > 0) {
// 		            var part = text.substring(0, everyNChars);
// 		            text = text.substring(everyNChars);
// 		            result += part + '\n'; // '\n'으로 개행을 추가합니다. HTML에서는 <br> 태그로 대체될 것입니다.
// 		        }
// 		        return result;
// 		    }
			
// 		    var processedText = addNewLines(originalText, 50);
		    
// 		    // HTML에서 개행을 <br>로 처리하기 위해 '\n'을 <br>로 대체합니다.
// 		    processedText = processedText.replace(/\n/g, '<br>');

// 		    // 가공된 텍스트를 div에 넣습니다.
// 		    document.getElementById('text').innerHTML = processedText;
		</script>
	</body>
</html>