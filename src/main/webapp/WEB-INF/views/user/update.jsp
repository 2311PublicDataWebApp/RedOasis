<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
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
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <h1 class="text-center mb-4">회원 정보 수정</h1>
<!-- 				<form action="/user/withdrawuser.kw" method="post" class="d-flex justify-content-end"> -->
<%--     			<a href="/user/delete.kw?userId=${user.userId }" class="text-dark">탈퇴하기</a> --%>
<!-- 				</form> -->
                <form action="/user/update.kw" method="post" class="border rounded p-4">
                    <div class="mb-3">
                        <label for="userId" class="form-label">아이디</label>
                        <input type="text" class="form-control" id="userId" name="userId" value="${user.userId }">
                    </div>
                    <div class="mb-3">
                        <label for="userPw" class="form-label">비밀번호</label>
                        <input type="password" class="form-control" id="userPw" name="userPw" value="${user.userPw }">
                    </div>
                    <!-- 비밀번호 확인 등의 필드는 필요하지 않을 때 주석 처리 -->
                    <!-- <div class="mb-3">
                        <label for="confirmPassword" class="form-label">비밀번호 확인:</label>
                        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword">
                    </div> -->
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
                    <input type="hidden" class="form-control" id="userBlackList" name="userBlackList" value="${user.userBlackList } ">
                    
                    
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">수정하기</button>
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