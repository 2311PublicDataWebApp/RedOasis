<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <!-- Custom styles for this template -->

        <!-- Custom styles for this template -->
        <link href="blog.css" rel="stylesheet">
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="../resources/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->

        <!-- Google fonts-->

        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../resources/css/style.css" rel="stylesheet" />

        <style>
            @font-face {
                font-family: 'SUITE-Regular';
                src:
                    url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
                font-weight: 400;
                font-style: normal;
            }

            body {}

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


            .blog-header-logo:hover {
                text-decoration: none;
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



            .blog-header-logo:hover {
                text-decoration: none;
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
            }
        </style>
    </head>

    <body>

        <body id="page-top">
        <jsp:include page="../../inc/header.jsp"></jsp:include>
            

            <!-- 움직이는 배너 -->
            <div class="slider">
                <div class="slide"></div>
                <div class="slide"></div>
                <div class="slide"></div>
            </div>


            <!-- 목록 -->
            <div style="margin-top: 200px; margin-left: 100px;">
                <ul class="">
                    <div>
                        <h4 style="float: left; margin-top: -50px;">와인 초보를 위한 와인 상식</h4>
                    </div>
                    <li>
                        <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top"
                            href="/wine/listone.kw">
                            <img class="bd-placeholder-img" width="600px" height="200px"
                                src="../resources/imag/winetip4.jpg" aria-hidden="true"
                                preserveAspectRatio="xMidYMid slice" focusable="false">
                            <rect width="100%" height="100%" fill="#777" />
                            </img>
                            <div class="col-lg-8">
                                <h6 class="mb-0">1. 와인 초보를 위한 필수 와인용어 5가지</h6>
                                <small class="text-body-secondary">2024 / 03 / 27</small>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top"
                            href="/wine/listtwo.kw">
                            <img class="bd-placeholder-img" width="600px" height="200px"
                                src="../resources/imag/winetip2.jpg" aria-hidden="true"
                                preserveAspectRatio="xMidYMid slice" focusable="false">
                            <rect width="100%" height="100%" fill="#777" />
                            </img>
                            <div class="col-lg-8">
                                <h6 class="mb-0">2. 와인 초보를 위한 와인라벨 읽는 법</h6>
                                <small class="text-body-secondary">2024 / 03 / 27</small>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top"
                            href="/wine/listthree.kw">
                            <img class="bd-placeholder-img" width="600px" height="200"
                                src="../resources/imag/winetip5.jpg" aria-hidden="true"
                                preserveAspectRatio="xMidYMid slice" focusable="false">
                            <rect width="100%" height="100%" fill="#777" />
                            </img>
                            <div class="col-lg-8">
                                <h6 class="mb-0">3. 와인 초보를 위한 와인병 보관하는 법</h6>
                                <small class="text-body-secondary">2024 / 03 / 27</small>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a class="d-flex flex-column flex-lg-row gap-3 align-items-start align-items-lg-center py-3 link-body-emphasis text-decoration-none border-top"
                            href="/wine/listfour.kw">
                            <img class="bd-placeholder-img" width="600px" height="200"
                                src="../resources/imag/winetip3.jpg" aria-hidden="true"
                                preserveAspectRatio="xMidYMid slice" focusable="false">
                            <rect width="100%" height="100%" fill="#777" />
                            </img>
                            <div class="col-lg-8">
                                <h6 class="mb-0">4. 와인 초보를 위한 와인잔 보관하는 법</h6>
                                <small class="text-body-secondary">2024 / 03 / 27</small>
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
                                <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter"><i
                                        class="fab fa-twitter"></i></a>
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