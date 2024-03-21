<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
</head>
<body>
	<form >
		<h1>회원 관리</h1>
			<table>
				<thead>
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>휴대폰 번호</th>
						<th>Email</th>
						<th>차단</th>
					</tr>				
				</thead>
				<tbody>
					<c:forEach items="${uList }" var="user" varStatus="i">
						<tr>
							<td>${user.userId }</td>
							<td>${user.userName }</td>
							<td>${user.userPhone }</td>
							<td>${user.userEmail }</td>
							<td>${user.userBlackList }</td>
						</tr>
					</c:forEach>
				</tbody>
			
			</table>
	</form>
</body>
</html>