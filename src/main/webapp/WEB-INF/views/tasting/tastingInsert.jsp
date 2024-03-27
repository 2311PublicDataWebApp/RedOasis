<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>와인 시음회 추가 테스트</title>
	</head>
	<body>
		<h1>공지사항 등록</h1>
    <form action="/tasting/insert.kw" method="post" enctype="multipart/form-data">
        <ul>
            <li>
                <label>제목</label>
                <input type="text" name="tastingName">
            </li>
            <li>
                <label>장소</label>
                <input type="text" name="tastingLocation">
            </li>
            <li>
                <label>작성자</label>
                <input type="text" name="tastingWriter">
            </li>
            <li>
                <label>내용</label>
                <textarea rows="4" cols="51" name="tastingContent"></textarea>
            </li>
            <li>
                <label>첨부파일</label>
                <input type="file" name="uploadFile">
            </li>
        </ul>
        <div>
            <input type="submit" value="등록하기">
        </div>
    </form>
	</body>
</html>