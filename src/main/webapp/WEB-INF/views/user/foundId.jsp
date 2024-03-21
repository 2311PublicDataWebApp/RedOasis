<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<main class="my-5">
    <div class="card mx-auto" style="width: 30rem;">
        <div class="card-body text-center">
            <h5 class="card-title font-weight-bold mb-4">찾은 아이디</h5>
            <p class="card-text display-6 font-weight-bold">${foundId}</p>
            <a href="/member/login.kw" class="text-dark font-weight-bold">로그인</a>	
            <a href="/member/findpassword.kw" class="text-dark font-weight-bold">비밀번호 찾기</a>	
        </div>
    </div>
</main>
</body>
</html>