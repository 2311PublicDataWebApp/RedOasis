<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
    <link href="../resources/css/style.css" rel="stylesheet" />
    <link href="../resources/css/blog.css" rel="stylesheet" />
    <link href="../resources/css/blog.rtl.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    

    <style>
      /* 		  폰트 */
      @font-face {
        font-family: 'SUITE-Regular';
        src:
          url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
        font-weight: 400;
        font-style: normal;
      }

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
        font-family: 'SUITE-Regular';
        src:
          url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
        font-weight: 400;
        font-style: normal;
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
        font-family: 'SUITE-Regular';
        src:
          url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
        font-weight: 400;
        font-style: normal;
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
        font-family: 'SUITE-Regular';
        src:
          url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
        font-weight: 400;
        font-style: normal;
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
/*       목록 */
	h2 {
		font-family: 'SUITE-Regular';
        src:
          url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
        font-weight: 400;
        font-style: normal;
	}
.hr1 { border: 0;
height: 2px;
background:  #d3d3d3;}
    .grey { 
     color: #727272;}
     #strong { font-family: 'SUITE-Regular';
        src:
          url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
        font-weight: 400;
        font-style: normal;}

            table {
            width: 100%;
            border-top: 1px solid #d3d3d3;
            border-collapse: collapse;
            }
            th { background-color: #d3d3d3 ; 
            border-top: 3px solid #727272;
            }
            th, td {
            border-bottom: 1px solid #d3d3d3;
            padding: 10px;
            }

  .greylist {
  width: 50px;
  height: 30px;
  font-weight: 900;
  color: white;
  text-align: center;
  background: grey;
  border: solid 2px white;
  border-radius: 5px;
  }
  .gradient {
  width: 80px;
  height: 30px;
  font-weight: 900;
  color: white;
  text-align: center;
  background: linear-gradient( to bottom, grey, black );
  border: solid 2px white;
  border-radius: 5px;
  }

            .left {text-align: left;}
            .right {  float: right;}
            .center { text-align: center;}

a {color:black;
text-decoration-line : none;}


    </style>
  </head>

  <body>
  <jsp:include page="../../inc/header.jsp"></jsp:include>

    <body id="page-top">
    
     

      <!-- 움직이는 배너 -->
      

      <!-- 목록 -->
      <div style="margin-top: 200px;">
		<div style="margin-top: 200px; margin-bottom: 20px; margin-left: 50px; ">
          <button type="button" class="btn btn-primary"  onclick="location.href='/education/list.kw'">교육</button>
          /
          <button type="button" class="btn btn-secondary" disabled>시음회</button>
        </div>
     	<table>
     		<thead>
    <tr>
        <th class="center">번호</th>
        <th class="left">제목</th>
        <th class="left">글쓴이</th>
        <th class="center">장소</th>
        <th class="center">날짜</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${tList}" var="tasting" varStatus="i">
    <tr>
        <td class="center">${i.count}</td>
        <td class="left"><a href="/tasting/detail.kw?tastingNo=${tasting.tastingNo}">${tasting.tastingName}</a></td>
        <td class="left">${tasting.tastingWriter}</td>
        <td class="center">${tasting.tastingLocation}</td>
        <td class="center">${tasting.tastingDate}</td>   
    </tr>
    </c:forEach>
    </tbody>
</table>
</div>
<!-- 				페이지네이션 위치 -->
				<div style="margin-left: 900px; margin-top: 30px; ">
				<tr align="center">
					<td colspan="5">
						<c:if test="${pInfo.startNavi ne '1' }">
							<a href="/tasting/list.kw?page=${pInfo.startNavi - 1 }">[이전]</a>
						</c:if>
						<c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }" var="p">
							<a href="/tasting/list.kw?page=${p }">${p }</a>
						</c:forEach>
						<c:if test="${pInfo.endNavi ne pInfo.naviTotalCount }">
							<a href="/tasting/list.kw?page=${pInfo.endNavi + 1 }">[다음]</a>
						</c:if>
						<button type="button" class="btn btn-primary" onclick="showInsertForm();" style="margin-left: 800px;">글쓰기</button>
						<script>
						function showInsertForm() {
							// 공지사항 글쓰기 페이지 이동
							location.href="/tasting/insert.kw";
						}
						</script>
						
					</td>
				</tr>

				</div>

     	
<!--       <div style="margin-top: 400px; margin-bottom: 50px; "> -->
<!--         <div style="margin-left: 300px; "> -->
<!--           <a style="float: left;"> 교육&nbsp; /&nbsp;</a> -->
<!--           <a>&nbsp;시음회</a> -->
<!--         </div> -->
<!--         </div> -->
<!-- 		<tbody>	 -->
<%-- 		<c:forEach items="${tList}" var="tasting" varStatus="i"> --%>
<!--           <tr> -->
<%--           	<td>${i.count}</td> --%>
<!--               <div class="col-lg-8" style="margin-left: 650px; margin-top: -150px;"> -->
<%--                <a href="/tasting/detail.kw?tastingNo=${tasting.tastingNo}">${tasting.tastingName}</a> --%>
<%--                 <td>${tasting.tastingDate}</td> --%>
<!--               </div> -->
<!--           </tr> -->
<%--           </c:forEach> --%>
<%--         <c:forEach items="${tList}" var="tasting" varStatus="i"> --%>
<!--           <tr> -->
<%--           	<td>${i.count}</td> --%>
<!--               <svg class="bd-placeholder-img" width="400" height="200" xmlns="http://www.w3.org/2000/svg" style="margin-left: 200px; margin-bottom: 50px;"> -->
<!--                 <rect width="100%" height="100%" fill="#777"  /> -->
<!--               </svg> -->
<!--               <div class="col-lg-8" style="margin-left: 650px; margin-top: -150px;"> -->
<%--                 <h6 class="mb-0"><a href="/tasting/detail.kw?tastingNo=${tasting.tastingNo}">${tasting.tastingName}</a></h6> --%>
<%--                 <td>${tasting.tastingDate}</small> --%>
<!--               </div> -->
<!--           </tr> -->
<%--           </c:forEach> --%>
		</tbody>
<!--           <li> -->
<!--             <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none " -->
<!--               href="#"> -->
<!--               <svg class="bd-placeholder-img" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" -->
<!--                 aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
<!--                 <rect width="100%" height="100%" fill="#777" /> -->
<!--               </svg> -->
<!--               <div class="col-lg-8"> -->
<!--                 <h6 class="mb-0">This is another blog post title</h6> -->
<!--                 <small class="text-body-secondary">January 14, 2024</small> -->
<!--               </div> -->
<!--             </a> -->
<!--           </li> -->
<!--           <li> -->
<!--             <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none " -->
<!--               href="#"> -->
<!--               <svg class="bd-placeholder-img" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" -->
<!--                 aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
<!--                 <rect width="100%" height="100%" fill="#777" /> -->
<!--               </svg> -->
<!--               <div class="col-lg-8"> -->
<!--                 <h6 class="mb-0">Longer blog post title: This one has multiple lines!</h6> -->
<!--                 <small class="text-body-secondary">January 13, 2024</small> -->
<!--               </div> -->
<!--             </a> -->
<!--           </li> -->
<!--           <li> -->
<!--             <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none " -->
<!--               href="#"> -->
<!--               <svg class="bd-placeholder-img" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" -->
<!--                 aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
<!--                 <rect width="100%" height="100%" fill="#777" /> -->
<!--               </svg> -->
<!--               <div class="col-lg-8"> -->
<!--                 <h6 class="mb-0">Example blog post title</h6> -->
<!--                 <small class="text-body-secondary">January 15, 2024</small> -->
<!--               </div> -->
<!--             </a> -->
<!--           </li> -->
<!--           <li> -->
<!--             <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none " -->
<!--               href="#"> -->
<!--               <svg class="bd-placeholder-img" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" -->
<!--                 aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
<!--                 <rect width="100%" height="100%" fill="#777" /> -->
<!--               </svg> -->
<!--               <div class="col-lg-8"> -->
<!--                 <h6 class="mb-0">This is another blog post title</h6> -->
<!--                 <small class="text-body-secondary">January 14, 2024</small> -->
<!--               </div> -->
<!--             </a> -->
<!--           </li> -->
<!--           <li> -->
<!--             <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none " -->
<!--               href="#"> -->
<!--               <svg class="bd-placeholder-img" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" -->
<!--                 aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"> -->
<!--                 <rect width="100%" height="100%" fill="#777" /> -->
<!--               </svg> -->
<!--               <div class="col-lg-8"> -->
<!--                 <h6 class="mb-0">Longer blog post title: This one has multiple lines!</h6> -->
<!--                 <small class="text-body-secondary">January 13, 2024</small> -->
<!--               </div> -->
<!--             </a> -->
<!--           </li> -->

      
      

      <br><br><br><br><br><br><br><br><br><br>
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
      <br><br><br><br><br><br>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
      <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
  </html>