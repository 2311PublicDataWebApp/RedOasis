<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러페이지</title>	
</head>
<jsp:include page="../../inc/header.jsp"></jsp:include>
<body>
	<h1>에러메시지</h1>
	<h2>${msg}</h2>
	<div class="errbtn">
		<a href="javascript:void(0);" onclick="goBack();">이전 페이지로 이동</a></div>
		<script>
		function goBack(){
			history.back();
		}
		</script>
</body>
</html>