<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>와인 어쩌고 수정 테스트 페이지</title>
	</head>
	<body>
	<jsp:include page="../../inc/header.jsp"></jsp:include>
		<h1>와인시음회 상세 조회</h1>
		<form action="/tasting/modify.kw" method="post" enctype="multipart/form-data">
			<input type="hidden" name="tastingNo" 		 value="${tasting.tastingNo }">
			<!--
				1. 파일이 있으면 삭제할 수 있도록 함
				2. 첨부파일을 선택하지 않고 수정할 때 null로 입력되는 것을 방지할 수 있음!
			-->
			<input type="hidden" name="imgFilename" 	 value="${tasting.imgFileName }">
			<input type="hidden" name="imgFileRename"    value="${tasting.imgFileRename }">
			<input type="hidden" name="imgFilePath" 	 value="${tasting.imgFilePath }">
			<input type="hidden" name="imgFileLength"    value="${tasting.imgFileLength }">
			<ul>
				<li>
					<label>제목</label>
					<input type="text" name="tastingName" value="${tasting.tastingName }">
				</li>
				<li>
					<label>작성자</label>
					<input type="text" name="tastingWriter" value="${tasting.tastingWriter }">
				</li>
				<li>
					<label>내용</label>
					<textarea rows="4" cols="51" name="tastingContent">${tasting.tastingContent }</textarea>
				</li>
				<li>
					<label>첨부파일</label>
					<span><a href="../resources/nuploadFiles/${tasting.imgFileRename }" download>${tasting.imgFileName }</a></span>
					<input type="file" name="reloadFile">
				</li>
			</ul>
			<br><br>
			<div>
				<input type="submit" value="등록하기">
				<button type="button" onclick="showNoticeList();">목록으로 이동하기</button>
			</div>
		</form>
		<script type="text/javascript">
			function showtastingList() {
				location.href = "/tasting/list.kw";
			}
		</script>
	</body>
</html>