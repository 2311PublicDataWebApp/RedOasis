<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<div class="container">
    <main class="my-5">
        <div class="container mt-5 d-flex justify-content-center align-items-center">
            <div class="card shadow p-3 mb-5 bg-white rounded" style="width: 25rem;">
                <h1 class="text-center mb-4" style="font-weight: bold;">아이디 찾기</h1>
                <form action="/user/findid.kw" method="post" class="p-3">
                    <div class="mb-3">
                        <label for="userEmail" style="font-weight: bold;">이메일</label>
                        <input type="email" class="form-control" id="userEmail" name="userEmail" placeholder="이메일을 입력하세요">
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary" style="font-weight: bold;">다음</button>
                    </div>
                    <br><br>
                    <div class="text-center">
                        <a href="/user/findid.kw" style="font-weight: bold;  color: black;" >아이디 찾기</a>
                        <a href="/user/findpassword.kw" style="font-weight: bold;  color: black;">비밀번호 찾기</a>
                        <a href="/user/register.kw" style="font-weight: bold;  color: black;">회원가입</a>
                    </div>
                </form>
            </div>
        </div>
    </main>
</div>
</head>
<body>

</body>
</html>