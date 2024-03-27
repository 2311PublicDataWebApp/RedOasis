<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>

<body>
<div class="container">
    <main class="my-5">
        <div class="container mt-5 d-flex justify-content-center align-items-center">
            <div class="card shadow p-3 mb-5 bg-white rounded" style="width: 25rem;">
                <form action="/user/login.kw" method="post" class="p-3" id="loginForm">
                    <h1 class="mb-4 text-center" style="color: black; font-weight: bold;" >로그인</h1>
                    <div class="mb-3">
                        <label for="userId" class="form-label" style="color: black; font-weight: bold;">아이디를 입력하세요</label>
                        <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력해 주세요">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label" style="color: black; font-weight: bold;">비밀번호를 입력하세요</label>
                        <input type="password" class="form-control" id="password" name="userPw" placeholder="비밀번호를 입력해 주세요">
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="save" name="save">
                        <label class="form-check-label" for="save" id="save" style="color: black; font-weight: bold;">아이디 저장</label>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary" style="font-weight: bold;">로그인</button>
                    </div>
                    <br><br>
                    <a href="/user/findid.kw" style="color: black; font-weight: bold;">아이디 찾기</a>
                    <a href="/user/findpassword.kw" style="color: black; font-weight: bold;">비밀번호 찾기</a>
                    <a href="/user/register.kw" style="color: black; font-weight: bold;">회원가입</a>
                </form>
            </div>
        </div>
    </main>
</div>

</body>
</html>