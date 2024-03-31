<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<!-- -----------------------------------부트스트랩 cdn------------------------ --> 

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <!-- Custom styles for this template -->
  <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="blog.css" rel="stylesheet">
  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="../resources/assets/favicon.ico" />
  <!-- Font Awesome icons (free version)-->
  <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
  <!-- Google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="/src/main/webapp/resources/css/style.css" rel="stylesheet" />  
  
  <!-- ----------------------------스타일--------------------------- -->

</head>
<!-------------------------------------------헤더------------------------------------------ -->
<body id="page-top" >
    <jsp:include page="../../inc/header.jsp"></jsp:include>
<!-- -------------------------------메인-------------------------------------------------------- -->
<div class="container"style="margin-top: 200px;">
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
<!-- -----------------------------푸터--------------------------------------- -->
<!-- Footer-->
  <footer class="footer py-4">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-4 text-lg-start">Copyright &copy; Red Oasis 2024</div>
            <div class="col-lg-4 my-3 my-lg-0">
                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <div class="col-lg-4 text-lg-end">
                <a class="link-dark text-decoration-none me-3" href="#!">이용약관</a>
                <a class="link-dark text-decoration-none" href="#!">개인정보처리방침</a>
            </div>
        </div>
    </div>
</footer>

<br>
<div class="footer-info" style="margin-left: 260px;">
    <p style="margin-left: 280px;">
        <span>주소 : 서울 중구 남대문로 120 대일빌딩 2층, 3층</span>
        <span>개인정보 관리책임자 : k-와이너리</span>
        <span>청소년보호책임자 : k-와이너리</span>
        <span>발행.편집인 : k-와이너리</span>
    </p>
    <p style="margin-left: 200px;">
        <span>㈜레드오아시스</span>
        <span>대표이사 : k-와이너리</span>
        <span>사업자등록번호 : 123-45-67890</span>
        <span>레드오아시스미디어 인터넷신문등록번호 : 서울특별시 아012345</span>
        <span>발행/등록년월일 : 2024.03.11</span></p>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>