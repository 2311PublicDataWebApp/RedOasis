<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <main class="my-5">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <h1 class="text-center mb-4">회원 정보 수정</h1>
                <form action="/admin/update.kw" method="post" class="border rounded p-4">
                    <div class="mb-3">
                        <label for="userId" class="form-label">아이디</label>
                        <input type="text" class="form-control" id="userId" name="userId" value="${user.userId }">
                    </div>
                    <div class="mb-3">
                        <label for="userPw" class="form-label">비밀번호</label>
                        <input type="password" class="form-control" id="userPw" name="userPw" value="${user.userPw }">
                    </div>
                    <div class="mb-3">
                        <label for="userName" class="form-label">이름</label>
                        <input type="text" class="form-control" id="userName" name="userName" value="${user.userName }">
                    </div>
                    <div class="mb-3">
                        <label for="userEmail" class="form-label">이메일</label>
                        <input type="email" class="form-control" id="userEmail" name="userEmail" value="${user.userEmail }">
                    </div>
                    <div class="mb-3">
                        <label for="userPhone" class="form-label">휴대폰번호</label>
                        <input type="tel" class="form-control" id="userPhone" name="userPhone" value="${user.userPhone }">
                    </div>
                    <div class="mb-3">
                        <label for="blacklist" class="form-label">블랙리스트 등록 : </label>
						<input type="checkbox" id="userBlackList" name="userBlackList" value="${user.userBlackList}">
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">수정하기</button>
                    </div>
                </form>
            </div>
        </div>
    </main>
</div>
</body>
</html>