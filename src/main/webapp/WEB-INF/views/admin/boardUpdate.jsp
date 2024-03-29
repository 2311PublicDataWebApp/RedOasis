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

</head>
<!-------------------------------------------헤더------------------------------------------ -->
<body id="page-top" >
    
<!-- --------------------------메인--------------------------------------------------------- -->
	<div class="container"style="margin-top: 200px;">
		<main class="my-5">
			<h1 class="mb-4 py-5 p-3 mb-5 rounded border-bottom">자유게시판 상세조회</h1>
			<br>
			<form action="/admin/boardlist/update.kw" method="post" class="border rounded p-4">
			<input type="hidden" id="boardNo" name="boardNo" value="${board.boardNo }">
			<ul>
				<div class="row my-4 justify-content-center">
					<li><label for="" class="col-sm-2 col-form-label"><h3>제목</h3></label>
						<span>
						<input type="text" class="form-control" id="boardName" name="boardName" value="${board.boardName }">
						
						</span>
					</li>
				</div>
				<div class="row my-4 justify-content-center">
					<li><label for="" class="col-sm-2 col-form-label"><h4>작성자</h4></label>
						<span>${board.userId }</span></li>
				</div>
				<div class="row my-4 justify-content-center ">
					<li>
						<label for="" class="col-sm-2 col-form-label mb-3"><h4>내용</h4></label>
						<div >
							<textarea style="width: 799px; height: 500px; background-color: #f8f9fa; border: 1px solid black; border-radius: 30px;" class="overflow-auto text-wrap p-3" name="boardContent"  >${board.boardContent }</textarea>
						</div>
					</li>
				</div>
				<div class="row mb-4 justify-content-center">
					<li>
					<label>첨부파일</label> 
					<span><a class="link-underline-light" href="../resources/nuploadFiles/${boardImg.imgFileRename }" >${boardImg.imgFilename }</a></span>
					</li>
				</div>
			</ul>
			<div class="container text-center">
				<button type="submit" class="btn btn-lg rounded-pill" style="width: 220px; height: 60px; background-color: #BE2E22; color: #ffffff;">수 정</button>
			</div>
		</form>
		</main>
	</div>	
	 	<br>
	 	
	 	<!-- 댓글 등록 -->
	 	<hr>
<!-- 	 	<form action="/reply/add.kw" method="post"> -->
<%-- 	 		<input type="hidden" name="refBoardNo" value="${board.boardNo }" id="refBoardNo"> --%>
<!-- 	 		<table width="500" border="1"> -->
<!-- 	 			<tr> -->
<!-- 	 				<td> -->
<!-- 	 					<input type="text" name="replyContent" id="replyContent" size="50"> -->
<!-- 	 				</td> -->
<!-- 	 				<td> -->
<!-- 	 					<input type="submit" value="완료"> -->
<!-- 							<button id="rSubmit">등록하기</button> -->
<!-- 	 				</td> -->
<!-- 	 			</tr> -->
<!-- 	 		</table> -->
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
	 				url : "/reply/list.kw",
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>