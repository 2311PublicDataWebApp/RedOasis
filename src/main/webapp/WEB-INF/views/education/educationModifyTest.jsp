<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<h1>와인강의 상세 조회</h1>
		<form action="/education/modify.kw" method="post" enctype="multipart/form-data">
			<input type="hidden" name="educationNo" 		 value="${education.educationNo }">
			<!--
				1. 파일이 있으면 삭제할 수 있도록 함
				2. 첨부파일을 선택하지 않고 수정할 때 null로 입력되는 것을 방지할 수 있음!
			-->
			<input type="hidden" name="imgFilename" 	 value="${education.imgFileName }">
			<input type="hidden" name="imgFileRename"    value="${education.imgFileRename }">
			<input type="hidden" name="imgFilePath" 	 value="${education.imgFilePath }">
			<input type="hidden" name="imgFileLength"    value="${education.imgFileLength }">
			<ul>
				<li>
				<label>제목</label>
				<input type="text" name="educationName" value="${education.educationName }">
			</li>
			<li>
				<label>장소</label>
				<input type="text" name="educationLocation" value="${education.educationLocation }">
			</li>
			<li>
				<label>링크</label>
				<input type="text" name="educationLink" value="${education.educationLink }">
			</li>
			<li>
				<label>내용</label>
				<textarea rows="4" cols="51" name="educationContent">${education.educationContent }</textarea>
			</li>
			<li>
				<label>강사</label>
				<input type="text" name="educationTeacher" value="${education.educationTeacher }">
			</li>
			<li>
				<label>첨부파일</label>
				<span><a href="../resources/euploadFiles/${education.imgFileRename }" download>${education.imgFileName }</a></span>
				<input type="file" name="reloadFile">
			</li>
			</ul>
			<br><br>
			<div>
				<input type="submit" value="등록하기">
				<button type="button" onclick="showeducationList();">목록으로 이동하기</button>
			</div>
		</form>
		<script type="text/javascript">
			function showeducationList() {
				location.href = "/education/list.kw";
			}
		</script>
	</body>
</html>