<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <main class="my-5">
        <div class="container mt-5 d-flex justify-content-center align-items-center">
            <div class="card shadow-sm" style="width: 25rem;">
                <div class="card-body">
                    <h1 class="card-title text-center mb-4" style="font-weight: bold;">비밀번호 찾기</h1>
                    <form action="/user/findpassword.kw" method="post">
                        <div class="mb-3">
                            <label for="userId" class="form-label" style="font-weight: bold;">아이디</label>
                            <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력하세요">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label" style="font-weight: bold;">이메일</label>
                            <input type="email" class="form-control" id="userEmail" name="userEmail" placeholder="이메일을 입력하세요">
                        </div>  
                        <div class="text-center mb-3">
                            <button type="submit" class="btn btn-primary" style="font-weight: bold;">다음</button>
                        </div>
                    </form>
                    <div class="text-center">
                        <a href="/user/findid.kw" class="link-dark" style="font-weight: bold;">아이디 찾기</a>
                        <a href="/user/findpassword.kw" class="link-dark" style="font-weight: bold;">비밀번호 찾기</a>
                        <a href="/user/register.kw" class="link-dark" style="font-weight: bold;">회원가입</a>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>

</body>
</html>