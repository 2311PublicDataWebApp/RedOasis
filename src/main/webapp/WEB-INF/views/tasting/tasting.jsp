<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>와인 시음회</title>
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
  <link href="/RedOasis/src/main/webapp/resources/css/style.css" rel="stylesheet" />

  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }

    .b-example-divider {
      width: 100%;
      height: 3rem;
      background-color: rgba(0, 0, 0, .1);
      border: solid rgba(0, 0, 0, .15);
      border-width: 1px 0;
      box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
    }

    .b-example-vr {
      flex-shrink: 0;
      width: 1.5rem;
      height: 100vh;
    }

    .bi {
      vertical-align: -.125em;
      fill: currentColor;
    }

    .nav-scroller {
      position: relative;
      z-index: 2;
      height: 2.75rem;
      overflow-y: hidden;
    }

    .nav-scroller .nav {
      display: flex;
      flex-wrap: nowrap;
      padding-bottom: 1rem;
      margin-top: -1px;
      overflow-x: auto;
      text-align: center;
      white-space: nowrap;
      -webkit-overflow-scrolling: touch;
    }

    .btn-bd-primary {
      --bd-violet-bg: #712cf9;
      --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

      --bs-btn-font-weight: 600;
      --bs-btn-color: var(--bs-white);
      --bs-btn-bg: var(--bd-violet-bg);
      --bs-btn-border-color: var(--bd-violet-bg);
      --bs-btn-hover-color: var(--bs-white);
      --bs-btn-hover-bg: #6528e0;
      --bs-btn-hover-border-color: #6528e0;
      --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
      --bs-btn-active-color: var(--bs-btn-hover-color);
      --bs-btn-active-bg: #5a23c8;
      --bs-btn-active-border-color: #5a23c8;
    }

    .bd-mode-toggle {
      z-index: 1500;
    }

    .bd-mode-toggle .dropdown-menu .active .bi {
      display: block !important;
    }

    /* stylelint-disable @stylistic/selector-list-comma-newline-after */

    .blog-header-logo {
      font-family: "Playfair Display", Georgia, "Times New Roman", serif
        /*rtl:Amiri, Georgia, "Times New Roman", serif*/
      ;
      font-size: 2.25rem;
    }

    .blog-header-logo:hover {
      text-decoration: none;
    }

    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
      font-family: "Playfair Display", Georgia, "Times New Roman", serif
        /*rtl:Amiri, Georgia, "Times New Roman", serif*/
      ;
    }

    .flex-auto {
      flex: 0 0 auto;
    }

    .h-250 {
      height: 250px;
    }

    @media (min-width: 768px) {
      .h-md-250 {
        height: 250px;
      }
    }

    /* Pagination */
    .blog-pagination {
      margin-bottom: 4rem;
    }

    /*
       * Blog posts
       */
    .blog-post {
      margin-bottom: 4rem;
    }

    .blog-post-meta {
      margin-bottom: 1.25rem;
      color: #727272;
    }

    /* stylelint-disable @stylistic/selector-list-comma-newline-after */

    .blog-header-logo {
      font-family: Amiri, Georgia, "Times New Roman", serif;
      font-size: 2.25rem;
    }

    .blog-header-logo:hover {
      text-decoration: none;
    }

    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
      font-family: Amiri, Georgia, "Times New Roman", serif;
    }

    .flex-auto {
      flex: 0 0 auto;
    }

    .h-250 {
      height: 250px;
    }

    @media (min-width: 768px) {
      .h-md-250 {
        height: 250px;
      }
    }

    /* Pagination */
    .blog-pagination {
      margin-bottom: 4rem;
    }

    /*
       * Blog posts
       */
    .blog-post {
      margin-bottom: 4rem;
    }

    .blog-post-meta {
      margin-bottom: 1.25rem;
      color: #727272;
    }

    /* 네비 네모 박스 */
    #navbar-square {
      width: 2000px;
      height: 90px;
      background: #BE2E22;
      margin-top: 10px;

      /* 배너 */
      .slider {
        position: relative;
        overflow: hidden;

        width: 600px;
        height: 400px;
      } 

      .slide {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-size: cover;
        background-position: center;

        animation: slider 7.5s infinite linear;
      }

      .slide:nth-child(1) {
        background-image: url(/RedOasis/src/main/webapp/resources/imag/slide01.jpg);
        animation-delay: 0;
      }

      .slide:nth-child(2) {
        background-image: url(/RedOasis/src/main/webapp/resources/imag/slide02.jpg);
        animation-delay: -2.5s;
      }

      .slide:nth-child(3) {
        background-image: url(/RedOasis/src/main/webapp/resources/imag/slide03.jpg);
        animation-delay: -5s;
      }

      @keyframes slider {
        0% {
          transform: translateX(0);
        }

        26% {
          transform: translateX(0);
        }

        33% {
          transform: translateX(-100%);
          animation-timing-function: step-end;
        }

        93% {
          transform: translateX(100%);
        }

        100% {
          transform: translateX(0);
        }
      }
    }
  </style>
</head>

<body>

  <body id="page-top">
    <!-- Navigation-->
    <div id="navbar-square" class="navbar navbar-expand-lg navbar-dark fixed-top"></div>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand" href="#page-top"><img src="/RedOasis/src/main/webapp/resources/imag/main-logo.png"
            alt="..." style="width: 100px; height: 50px;" /></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
          aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
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
            <button type="button" class="btn btn-outline-primary me-2">로그인</button>
            <button type="button" class="btn btn-primary">회원가입</button>
          </div>
        </div>
      </div>
    </nav>
    <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
      <symbol id="check2" viewBox="0 0 16 16">
        <path
          d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z" />
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z" />
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path
          d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z" />
        <path
          d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z" />
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path
          d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z" />
      </symbol>
    </svg>

    <!-- 움직이는 배너 -->
    <div class="slider">
      <div class="slide"></div>
      <div class="slide"></div>
      <div class="slide"></div>
    </div>


    <!-- 목록 -->
    <div style="margin-top: 200px; margin-left: 100px;">
      <div>
        <h4 class="fst-italic" style="float: left;"> 교육&nbsp; /&nbsp;</h4>
        <h4 class="fst-italic">&nbsp;시음회</h4>
      </div>
      <ul class="list-unstyled">
        <li>
          <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top"
            href="#">
            <svg class="bd-placeholder-img" width="100%" height="200" xmlns="http://www.w3.org/2000/svg"
              aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
              <rect width="100%" height="100%" fill="#777" />
            </svg>
            <div class="col-lg-8">
              <h6 class="mb-0">Example blog post title</h6>
              <small class="text-body-secondary">January 15, 2024</small>
            </div>
          </a>
        </li>
        <li>
          <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top"
            href="#">
            <svg class="bd-placeholder-img" width="100%" height="200" xmlns="http://www.w3.org/2000/svg"
              aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
              <rect width="100%" height="100%" fill="#777" />
            </svg>
            <div class="col-lg-8">
              <h6 class="mb-0">This is another blog post title</h6>
              <small class="text-body-secondary">January 14, 2024</small>
            </div>
          </a>
        </li>
        <li>
          <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top"
            href="#">
            <svg class="bd-placeholder-img" width="100%" height="200" xmlns="http://www.w3.org/2000/svg"
              aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
              <rect width="100%" height="100%" fill="#777" />
            </svg>
            <div class="col-lg-8">
              <h6 class="mb-0">Longer blog post title: This one has multiple lines!</h6>
              <small class="text-body-secondary">January 13, 2024</small>
            </div>
          </a>
        </li>
        <li>
          <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top"
            href="#">
            <svg class="bd-placeholder-img" width="100%" height="200" xmlns="http://www.w3.org/2000/svg"
              aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
              <rect width="100%" height="100%" fill="#777" />
            </svg>
            <div class="col-lg-8">
              <h6 class="mb-0">Example blog post title</h6>
              <small class="text-body-secondary">January 15, 2024</small>
            </div>
          </a>
        </li>
        <li>
          <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top"
            href="#">
            <svg class="bd-placeholder-img" width="100%" height="200" xmlns="http://www.w3.org/2000/svg"
              aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
              <rect width="100%" height="100%" fill="#777" />
            </svg>
            <div class="col-lg-8">
              <h6 class="mb-0">This is another blog post title</h6>
              <small class="text-body-secondary">January 14, 2024</small>
            </div>
          </a>
        </li>
        <li>
          <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top"
            href="#">
            <svg class="bd-placeholder-img" width="100%" height="200" xmlns="http://www.w3.org/2000/svg"
              aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
              <rect width="100%" height="100%" fill="#777" />
            </svg>
            <div class="col-lg-8">
              <h6 class="mb-0">Longer blog post title: This one has multiple lines!</h6>
              <small class="text-body-secondary">January 13, 2024</small>
            </div>
          </a>
        </li>
      </ul>
      <br><br><br><br>
      <!-- Footer-->
      <footer class="footer py-4">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-4 text-lg-start">Copyright &copy; Red Oasis 2024</div>
            <div class="col-lg-4 my-3 my-lg-0">
              <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
              <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook"><i
                  class="fab fa-facebook-f"></i></a>
              <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="LinkedIn"><i
                  class="fab fa-linkedin-in"></i></a>
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
          <span>발행/등록년월일 : 2024.03.11</span>
        </p>
      </div>
    </div>
    <br><br><br>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
  </body>

</html>