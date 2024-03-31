<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<!-- -----------------------------------부트스트랩 cdn------------------------ --> 

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <!-- Custom styles for this template -->
  <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="blog.css" rel="stylesheet">
  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="../resources/assets/favicon.ico" />
  <!-- Font Awesome icons (free version)-->
  <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
  <!-- Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="/src/main/webapp/resources/css/style.css" rel="stylesheet" />  
  
  <!-- ----------------------------스타일--------------------------- -->
  <style>
 /* 네비 네모 박스 */
    #navbar-square {
    width: 2000px;
    height: 100px;
    background: #212529;
  }
  

  </style>
</head>
<!-------------------------------------------헤더------------------------------------------ -->
<body id="page-top" >
    <!-- Navigation-->
    <div id="navbar-square" class="navbar navbar-expand-lg navbar-dark fixed-top"></div>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="#page-top"><img src="/src/main/webapp/resources/imag/main-logo.png" alt="..." style="width: 100px; height: 50px;"/></a>
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
                    <div class="col-md-3 text-end">
                        <button type="button" class="btn btn-outline-primary me-2" onclick="window.location.href='/user/login.kw'">로그인</button>
                        <button type="button" class="btn btn-primary" onclick="window.location.href='/user/register.kw'">회원가입</button>
                    </div>
            </div>
        </div>
    </nav>
<!-- --------------------------메인--------------------------------------------------------- -->
<div class="container"style="margin-top: 200px;">
<main class="m-5 px-5">

			<h1 class="mb-4 py-3">자유게시판</h1>
			<br>
			<table class="table">
				<thead>
					<tr class="table-light" align="center">
						<th scope="col" style="width: 10%;">번호</th>
						<th scope="col" style="width: 40%;">제목</th>
						<th scope="col" style="width: 20%;">작성자</th>
						<th scope="col" style="width: 20%;">작성날짜</th>
<!-- 						<th scope="col" style="width: 10%;">첨부파일</th> -->
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${sList }" var="board" varStatus="i">
						<tr align="center">
							<td>${board.boardNo }</td>
							<td><a class="link-underline-light link-dark link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" href="/board/detail.do?boardNo=${board.boardNo }"> ${board.boardName }</a></td>
							<td>${board.userId }</td>
							<td>${board.boardDate }</td>

						</tr>
					</c:forEach>
				</tbody>

				<tfoot>
					<tr align="center">
						<td colspan="5"><c:if test="${pInfo.startNavi ne'1' }">
								<a class="link-underline-light link-dark link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" href="/board/list.kw?page=${pInfo.startNavi - 1 }">이전</a>
							</c:if> <c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }"
								var="p">
								<a class="link-underline-light link-dark link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" href="/board/list.kw?page=${p }">${p }</a>
							</c:forEach> <c:if test="${pInfo.endNavi ne pInfo.naviTotalCount }">
								<a class="link-underline-light link-dark link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" href="/board/list.kw?page=${pInfo.currentPage + 1 }">다음</a>
							</c:if></td>
					</tr>
				</tfoot>
			</table>
			<br>
			<br>
			<div class="d-flex justify-content-end">
				<form action="/board/search.kw" method="get">
					<div class="input-group">
						<input class="form-control" type="text" name="searchKeyword" id="roadAddress" placeholder="입력">
						<button class="btn btn-outline-secondary" type="submit" style="background-color: #212529; color: #ffffff;">검 색</button>
					</div>
				</form>
			</div>
			<br>
			<br>
			<br>
			
		</main>
	</div>
	<script>
		function showInsertPage() {
			location.href = "/board/register.kw";
		}
	</script>
</body>
</html>