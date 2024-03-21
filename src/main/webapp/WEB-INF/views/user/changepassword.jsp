<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <main class="my-5 d-flex justify-content-center align-items-center">
        <div class="card p-4" style="width: 25rem;">
            <div class="card-body text-center">
                <h1 class="font-weight-bold mb-4">비밀번호 변경하기</h1>
                <form action="/user/changepassword.kw" method="post">
                    <input type="hidden" name="userId" value="${userId}">
                    <div class="mb-3">
                        <label for="userPw" class="form-label font-weight-bold">새로운 비밀번호</label>
                        <input type="password" id="userPw" name="userPw" class="form-control" placeholder="새로운 비밀번호를 입력하세요">
                    </div>
                    <button type="submit" class="btn btn-primary btn-lg">비밀번호 변경</button>
                </form>
                <div class="mt-3">
                    <a href="/user/findid.kw" class="text-dark font-weight-bold">아이디 찾기</a>
                    <a href="/user/findpassword.kw" class="text-dark font-weight-bold mx-3">비밀번호 찾기</a>
                    <a href="/user/register.kw" class="text-dark font-weight-bold">회원가입</a>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>