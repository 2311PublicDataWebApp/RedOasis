<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>교육</title>
	</head>
	<body>
		<h1>와인강의 등록</h1>
    <form action="/education/insert.kw" method="post" enctype="multipart/form-data">
        <ul>
            <li>
                <label>제목</label>
                <input type="text" name="educationName">
            </li>
            <li>
                <label>장소</label>
                <input type="text" name="educationLocation">
            </li>
            <li>
                <label>날짜</label>
                <span>${education.educationDate }</span>
            </li>
            <li>
                <label>링크</label>
                <input type="text" name="educationLink">
            </li>
            <li>
                <label>내용</label>
                <textarea rows="4" cols="51" name="educationContent"></textarea>
            </li>
            <li>
                <label>강사</label>
                <input type="text" name="educationTeacher">
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