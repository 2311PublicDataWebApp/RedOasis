<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자유게시판 상세</title>
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
    background: #BE2E22;
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
                    <li class="nav-item"><a class="nav-link" href="#services">와이너리</a></li>
                    <li class="nav-item"><a class="nav-link" href="#portfolio">와인목록</a></li>
                    <li class="nav-item"><a class="nav-link" href="#about">와인설명</a></li>
                    <li class="nav-item"><a class="nav-link" href="#team">자유게시판</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">교육/시음회</a></li>
                </ul>
                    <div class="col-md-3 text-end">
                        <button type="button" class="btn btn-outline-primary me-2" >로그인</button>
                        <button type="button" class="btn btn-primary" >회원가입</button>
                    </div>
            </div>
        </div>
    </nav>

	 	<h1>자유게시판 상세</h1>
	 	<ul>
	 		<li>
	 			<label>제목</label>
	 			<span>${board.boardName }</span>
	 		</li>
	 		<li>
	 			<label>작성자</label>
	 			<span>${board.userId }</span>
	 		</li>
	 		<li>
	 			<label>내용</label>
	 			<p>${board.boardContent }</p>
	 		</li>
	 		<li>
	 			<label>첨부파일</label>
	 			<a href="">${iList.boardFilename }</a>
	 		</li>
	 	</ul>
	 	<br>
	 	<div>
	 		<button>수정하기</button>
	 		<button>삭제하기</button>
	 		<button>목록으로</button>
	 		<button>뒤로가기</button>
	 	</div>
	 	<!-- 댓글 등록 -->
	 	<hr>
<!-- 	 	<form action="/reply/add.kw" method="post"> -->
	 		<input type="hidden" name="refBoardNo" value="${board.boardNo }" id="refBoardNo">
	 		<table width="500" border="1">
	 			<tr>
	 				<td>
	 					<input type="text" name="replyContent" id="replyContent" size="50">
	 				</td>
	 				<td>
<!-- 	 					<input type="submit" value="완료"> -->
							<button id="rSubmit">등록하기</button>
	 				</td>
	 			</tr>
	 		</table>
<!-- 	 	</form> -->
	 	<!-- 댓글 목록 -->
	 	<table width="550" border="1" id="replyTable">
	 	<tbody></tbody>
<%-- 	 		<c:forEach items="${rList }" var="reply"> --%>
<!-- 		 		<tr> -->
<%-- 		 			<td>${reply.replyWriter }</td> --%>
<%-- 		 			<td>${reply.replyContent }</td> --%>
<%-- 		 			<td>${reply.rCreateDate }</td> --%>
<!-- 		 			<td> -->
<!-- 		 				<a href="#">수정</a> -->
<!-- 		 				<a href="#">삭제</a> -->
<!-- 		 			</td> -->
<!-- 		 		</tr> -->
<%-- 	 		</c:forEach> --%>
	 	</table>
	 	<script>
	 		getReplyList();
	 		function getReplyList() {
	 			var refBoardNo = $("#refBoardNo").val();
	 			$.ajax({
	 				url : "/reply/list.kh",
	 				data : { "refBoardNo" : refBoardNo },
	 				type : "GET",
	 				success : function(result) {
	 					var tableBody=$("#replyTable tBody")
	 					var tr;
	 					var replyWriter;
	 					var replyContent;
	 					var rCreateDate;
	 					var btnArea;
	 					
	 					if(result.length>0){
	 						for(var i in result){
	 							tr= $("<tr>")// <tr></tr>
	 							replyWriter = $("<td>").text(result[i].replyWriter);// <td></td>
	 							replyContent = $("<td>").text(result[i].replyContent);
	 							rCreateDate = $("<td width='100'>").text(result[i].rCreateDate);
	 							btnArea= $("<td width='90'>")
	 										.append("<a href='#'>수정</a>")
	 										.append("<a href='#' onclick='removeReply();'>삭제</a>")
	 							tr.append(replyWriter);
	 							tr.append(replyContent);
	 							tr.append(rCreateDate);
	 							tr.append(btnArea);
	 							tableBody.append(tr);
	 						}
	 					}
	 				},
	 				error : function() {
	 					alert("Ajax 통신 실패! 관리자에게 문의해주세요!");
	 				}
	 			});
	 		}
	 		
	 		function removeReply(){
	 			var replyNo=222;
	 			$.ajax{
	 				url:"/reply/delete.kh",
	 				data:{ "replyNo": replyNo },
	 				type:"POST",
	 				success:function(){},
	 				error:function(){}
	 			});
	 		}
	 		
	 		
	 		$("#rSubmit").on("click", function() {
// 	 			var refBoardNo = ${board.boardNo };
				var refBoardNo = $("#refBoardNo").val();
				var replyContent = $("#replyContent").val();
	 			$.ajax({
	 				url : "/reply/add.kh",
	 				data : { 
	 						"refBoardNo" : refBoardNo
	 						, "replyContent" : replyContent
	 						},
	 				type : "POST",
	 				success : function(result) {
	 					alert("서비스 결과 : " + result);
	 					location.href = "/board/detail.kh?boardNo="+refBoardNo;
	 				},
	 				error : function() {
	 					alert("Ajax 통신 실패! 관리자에게 문의바랍니다.");
	 				}
	 			});
	 		});
	 	</script>
	</body>
</html>
