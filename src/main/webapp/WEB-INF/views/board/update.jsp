<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<!-------------------------------------------헤더------------------------------------------ -->
<body id="page-top" >
<jsp:include page="../../inc/header.jsp"></jsp:include>
<!-- --------------------------메인--------------------------------------------------------- -->
<div class="container"style="margin-top: 200px;">
<main class="my-5">
			<h1 class="mb-4 py-3">공지사항 수정</h1>
			<br>
			<form action="/board/update.kw" method="post"
				enctype="multipart/form-data">
				<input type="hidden" name="boardNo" 			value="${board.boardNo }">
				<input type="hidden" name="boardFilename" 		value="${boardImg.boardFileName }"> 
				<input type="hidden" name="boardFileRename" 	value="${boardImg.boardFileRename }">
				<input type="hidden" name="boardFilepath"		value="${boardImg.boardFilepath }"> 
				<input type="hidden" name="boardFileSize" 		value="${boardImg.boardFileSize }">
				<ul>
					<div class="row mb-4 justify-content-center">
						<li><label for="" class="col-sm-2 col-form-label"><h2>제목</h2></label>
							<input type="text" name="boardName"	value="${board.boardName }"> </li>
					</div>
					<br>
					<div class="row mb-4 justify-content-center">
						<li><label for="" class="col-sm-2 col-form-label">작성자</label>
							<span>${board.userId }</span></li>
					</div>
					<br>
					<li><label for="exampleFormControlTextarea1" class="form-label mb-3">내용</label> 
					<textarea class="form-control" id="exampleFormControlTextarea1" rows="15" cols="100" name="boardContent">${board.boardContent }</textarea></li>
					<div class="row mb-4 justify-content-center">
					<br>
						<li><label>첨부파일</label> 
							<span for="uploadFile" class="col-sm-2 col-form-label"><a href="../resources/nuploadFiles/${boardImg.imgFileRename }">${boardImg.imgFileName }</a></span> 
							<input type="file" name="reloadFile" class="form-control" style="color: #919191">
						</li>
					</div>
				</ul>
				<br> <br>
				<div class="row">
					<div class="container text-center">
						<input type="submit" value="수정하기" id="update" class="btn btn-lg rounded-pill" style="width: 220px; height: 60px; background-color: #212529; color: #ffffff;">
						<button type="button" id="list" onclick="window.location.href='/board/list.kw'"; class="btn btn-light btn-lg rounded-pill" style="width: 220px; height: 60px; background-color: #212529; color: #ffffff;">목록</button>
					</div>
				</div>
			</form>
		</main>


</body>
</html>