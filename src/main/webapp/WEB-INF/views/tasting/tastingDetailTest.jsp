<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>시음회 디테일</title>
	</head>
	<body>
		<h1>공지사항 상세 조회</h1>
		<ul>
			<li>
				<label>제목</label>
				<span>${tasting.tastingName }</span>
			</li>
			<li>
				<label>장소</label>
				<span>${tasting.tastingLocation }</span>
			</li>
			<li>
				<label>날짜</label>
				<span>${tasting.tastingDate }</span>
			</li>
			<li>
				<label>주최자</label>
				<span>${tasting.tastingWriter }</span>
			</li>
			<li>
				<label>내용</label>
				<span>${tasting.tastingContent }</span>
			</li>
<!-- 			<li> -->
<!-- 				<label>첨부파일</label> -->
<%-- 				<span><a href="../resources/nuploadFiles/${tasting.tastingFileRename }" download>${tasting.tastingFilename }</a></span> --%>
<!-- 			</li> -->
		</ul>
	</body>
</html>