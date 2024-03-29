<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
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
  <style>
 /* 네비 네모 박스 */
    #navbar-square {
    width: 2000px;
    height: 100px;
    background: #BE2E22;
  }
  </style>
</head>
<!-------------------------------------------헤더------------------------------------------ -->
<body id="page-top" >
    <!-- Navigation-->
    <div id="navbar-square" class="navbar navbar-expand-lg navbar-dark fixed-top"></div>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="#page-top"><img src="/src/main/webapp/resources/imag/main-logo.png" alt="..." style="width: 100px; height: 50px;"/></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars ms-1"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                    <li class="nav-item"><a class="nav-link" href="#services">와이너리</a></li>
                    <li class="nav-item"><a class="nav-link" href="#portfolio">와인목록</a></li>
                    <li class="nav-item"><a class="nav-link" href="#about">와인설명</a></li>
                    <li class="nav-item"><a class="nav-link" href="#team">자유게시판</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">교육/시음회</a></li>
                </ul>
                    <div class="col-md-3 text-end">
                        <button type="button" class="btn btn-outline-primary me-2" >로그인</button>
                        <button type="button" class="btn btn-primary" >회원가입</button>
                    </div>
            </div>
        </div>
    </nav>
<!-- -------------------------------메인-------------------------------------------------------- -->

  <div class="container" >
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