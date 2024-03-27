<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
        .card-title {
            font-weight: bold;
        }
        .form-label {
            font-weight: bold;
        }
        .btn-primary {
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="container">
    <main class="my-5">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h1 class="card-title text-center mb-4">회원가입</h1>
                        <form action="/user/register.kw" method="post">
                            <div class="mb-3">
                                <label for="userId" class="form-label">아이디:</label>
                                <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력해 주세요">
                            </div>
                            <div class="mb-3">
                                <label for="userPw" class="form-label">비밀번호:</label>
                                <input type="password" class="form-control" id="userPw" name="userPw" placeholder="10~16자리 영문,숫자,특수문자 포함">
                            </div>
                            <div class="mb-3">
                                <label for="userName" class="form-label">이름:</label>
                                <input type="text" class="form-control" id="userName" name="userName" placeholder="이름을 입력해 주세요">
                            </div>
                            <div class="mb-3">
                                <label for="userEmail" class="form-label">이메일:</label>
                                <input type="email" class="form-control" id="userEmail" name="userEmail" placeholder="이메일을 입력해 주세요">
                            </div>
                            <div class="mb-3">
                                <label for="userPhone" class="form-label">휴대폰번호:</label>
                                <input type="tel" class="form-control" id="userPhone" name="userPhone" placeholder="휴대폰번호를 입력해 주세요">
                            </div>
                              <div class="mb-3 text-center">
                                <button type="submit" class="btn btn-primary">가입하기</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>