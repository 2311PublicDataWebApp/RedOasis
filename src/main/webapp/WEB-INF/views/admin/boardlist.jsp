<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
    	<style>
			/* 네비 네모 박스 */
			#navbar-square {
			width: 2000px;
			height: 100px;
			background: #212529;
		}
		</style>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>게시판 관리</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <!-- 추가내용 -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		<!-- Custom styles for this template -->
		<link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
		<!-- Custom styles for this template -->
        <link href="../../resources/css/adminStyle.css" rel="stylesheet" />
		<!-- Favicon-->
		<link rel="icon" type="image/x-icon" href="../resources/assets/favicon.ico" />
		<!-- Font Awesome icons (free version)-->
		<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
		<!-- Google fonts-->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
		<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
		<!-- Core theme CSS (includes Bootstrap)-->
		<link href="../../resources/css/style.css" rel="stylesheet" />
		<style>
		#mainNav {
		    background-color: black; /* 초기값으로 되돌립니다. */
		}
		#total-count-box {
		    margin-left: 5%; 
		    width : 230px;
		    background-color: #e9e9e9;
		}
		</style>
    </head>
	<body id="page-top" class="sb-nav-fixed">
		<!-- Navigation-->
	    <div id="navbar-square" class="navbar navbar-expand-lg navbar-dark fixed-top"></div>
	    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
	        <div class="container">
	            <a class="navbar-brand" href="#page-top"><img src="../../resources/imag/main-logo.png" alt="..." style="width: 100px; height: 50px;"/></a>
	            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
	                Menu
	                <i class="fas fa-bars ms-1"></i>
	            </button>
	            <div class="collapse navbar-collapse" id="navbarResponsive">
	                <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
	                    <li class="nav-item"><a class="nav-link" href="#services">와이너리</a></li>
	                    <li class="nav-item"><a class="nav-link" href="#portfolio">와인목록</a></li>
	                    <li class="nav-item"><a class="nav-link" href="#about">와인설명</a></li>
	                    <li class="nav-item"><a class="nav-link" href="#team">자유게시판</a></li>
	                    <li class="nav-item"><a class="nav-link" href="#contact">교육/시음회</a></li>
	                </ul>
	                    <div class="col-md-3 text-end">
	                        <button type="button" class="btn btn-outline-primary me-2" >로그아웃</button>
	                    </div>
	            </div>
	        </div>
	    </nav>
		<div id="layoutSidenav">
	            <div id="layoutSidenav_nav">
	                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
	                    <div class="sb-sidenav-menu">
	                        <div class="nav">
	                            <div class="sb-sidenav-header" style="color: white;">
	                                <br><br><br><br>관리자 메뉴
	                            </div>
	                            <div class="sb-sidenav-menu-heading">일반</div>
	                            <a class="nav-link" href="/admin/userlist.kw">
	                                <div class="sb-nav-link-icon"><i class="fas fa-regular fa-user"></i></div>
	                                &nbsp;회원 관리
	                            </a>
	                            <a class="nav-link" href="/admin/boardlist.kw">
	                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
	                                &nbsp;게시판 관리
	                            </a>
	                            <a class="nav-link" href="/admin/winelist.kw">
	                                &nbsp;<div class="sb-nav-link-icon"><i class="fas fa-solid fa-wine-glass-empty"></i></div>
	                                &nbsp;와인 관리
	                            </a>
	                            <a class="nav-link" href="/admin/winerylist.kw">
	                                <div class="sb-nav-link-icon"><i class="fas fa-solid fa-shop"></i></div>
	                                &nbsp;와이너리 관리
	                            </a>
	                        </div>
	                    </div>
	                    <div class="sb-sidenav-footer">
	                        <div class="small">접속계정</div>
	                        관리자
	                    </div>
	                </nav>
	            </div>
	            <div id="layoutSidenav_content">
	                <main>
	                    <div class="container-fluid px-4">
	                    	<br><br><br><br><br>
	                    	<div id="total-count-box">
		                    	<h2><i class="fa-solid fa-table"></i> 총 게시글 수 	                    	
		                    	<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${totalCount} 개</h2>
	                    	</div>
	                        <h1 class="mt-4">게시판 관리</h1>
	                        <div class="card mb-4">
	                        </div>
	                        <div class="card mb-4">
	                            <div class="card-header">
	                                <i class="fas fa-table me-1"></i>
	                                게시글 목록 조회
	                            </div>
	                            <div class="card-body">
	                                <table id="datatablesSimple">
	                                    <thead>
	                                        <tr>
												<th>게시글 번호</th>
												<th>작성자 아이디</th>
												<th>게시글 제목</th>
												<th>최근 수정일</th>
												<th>삭제</th>
	                                        </tr>
	                                    </thead>
	                                    <tfoot>
	                                        <tr>
												<th>게시글 번호</th>
												<th>작성자 아이디</th>
												<th>게시글 제목</th>
												<th>최근 수정일</th>
												<th>삭제</th>
	                                        </tr>
	                                    </tfoot>
	                                    <tbody>
											<c:forEach items="${bList }" var="board">
												<tr>
													<td>${board.boardNo }</td>
								        			<td>${board.userId}</td>
													<td>${board.boardName }</td>
													<td>${board.updateDate }</td>
													<td><input type="button" value="삭제" style="width: 100%; color : red;"></td>
												</tr>
											</c:forEach>
	                                    </tbody>
	                                </table>
	                            </div>
	                        </div>
	                    </div>
	                </main>
	            </div>
	        </div>

<!-- 	<h1>(임시) 관리자 네브바</h1> -->
<!-- 	<a href="/admin/userlist.kw">회원관리</a> -->
<!-- 	<a href="/admin/boardlist.kw">게시판관리</a> -->
<!-- 	<a href="#">와인관리</a> -->
<!-- 	<a href="/admin/winerylist.kw">와이너리관리</a> -->
<!-- 	<a href="#">이달의 와인 관리</a> -->
<!-- 	<h1>게시판 관리</h1> -->
<%-- 	<h2>총 게시글 수 : ${totalCount}</h2> --%>
<!-- 	<!-- 여기 미완 --> -->
<!--     <form action="/" method="get"> -->
<%-- 		<input type="text" name="searchKeyword" placeholder="검색어 입력" value="${searchKeyword }"> --%>
<!-- 		<input type="submit" value="검색"> -->
<!--     </form> -->
<!--     <form id="sortForm"> -->
<!--     	정렬 :  -->
<!-- 	    <select id="sortList" name="sortList" onchange="sortPage()"> -->
<%-- 		  	<option value="UPDATE_DATE" <% if ("UPDATE_DATE".equals(request.getParameter("sortList"))) { %> selected <% } %>>최근 수정일</option> --%>
<%-- 		    <option value="BOARD_NAME" <% if ("BOARD_NAME".equals(request.getParameter("sortList"))) { %> selected <% } %>>작성자 이름</option> --%>
<%-- 		    <option value="USER_ID" <% if ("USER_ID".equals(request.getParameter("sortList"))) { %> selected <% } %>>작성자 아이디</option> --%>
<!-- 	    </select> -->
<!-- 	</form> -->
<!-- 	<table> -->
<!-- 		<thead> -->
<!-- 			<tr> -->
<!-- 				<th>게시글 번호</th> -->
<!-- 				<th>작성자 아이디</th> -->
<!-- 				<th>게시글 제목</th> -->
<!-- 				<th>최근 수정일</th> -->
<!-- 				<th>삭제</th> -->
<!-- 			</tr>				 -->
<!-- 		</thead> -->
<!-- 		<tbody> -->
<%-- 			<c:forEach items="${bList }" var="board"> --%>
<!-- 				<tr> -->
<%-- 					<td>${board.boardNo }</td> --%>
<%--         			<td>${board.userId}</td> --%>
<%-- 					<td>${board.boardName }</td> --%>
<%-- 					<td>${board.updateDate }</td> --%>
<!-- 					<td><input type="button" value="삭제"></td> -->
<!-- 				</tr> -->
<%-- 			</c:forEach> --%>
<!-- 		</tbody> -->
<!-- 		<!-- 페이지네이션 --> -->
<!-- 		<tfoot> -->
<!-- 			<tr align="center"> -->
<!-- 				<td colspan="5"> -->
<%-- 					<c:if test="${pInfo.startNavi ne '1' }"> --%>
<%-- 					    <a href="/admin/boardlist.kw?page=${pInfo.startNavi -1 }&sortList=${param.sortList}">이전</a> --%>
<%-- 					</c:if> --%>
<%-- 					<c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }" var="p"> --%>
<%-- 					    <a href="/admin/boardlist.kw?page=${p }&sortList=${param.sortList}">${p }</a> --%>
<%-- 					</c:forEach> --%>
<%-- 					<c:if test="${pInfo.endNavi ne pInfo.naviTotalCount }"> --%>
<%-- 					    <a href="/admin/boardlist.kw?page=${pInfo.endNavi +1 }&sortList=${param.sortList}">다음</a> --%>
<%-- 					</c:if> --%>
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 	    </tfoot> -->
<!-- 	</table> -->

			<!-- Footer-->
			  <footer class="footer py-4" style="padding-top: 100px !important; padding-left:10% !important;">
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
			<div class="footer-info" style="margin-left: 260px; padding-left:10% !important;">
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
	function sortPage() {
	    var sortList = document.getElementById("sortList").value;
	    window.location.href = "/admin/boardlist.kw?sortList=" + sortList;
	}
	</script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    <script src="../../resources/js/datatables-simple-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>