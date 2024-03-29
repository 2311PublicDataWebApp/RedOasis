<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>와인설명4</title>
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
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../resources/css/.css" rel="stylesheet" />
    <link href="../resources/css/style.css" rel="stylesheet" />
    
    <style>
        @font-face {
            font-family: 'SUITE-Regular';
            src:
                url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
            font-weight: 400;
            font-style: normal;
        }

        body {
            font-family: 'SUITE-Regular';
        }

		 /* 네비 네모 박스 */
		    #navbar-square {
		    width: 2000px;
		    height: 100px;
		    background: #BE2E22;
		  }
    </style>
</head>

<body>
<body id="page-top">
<jsp:include page="../../inc/header.jsp"></jsp:include>
            
    <!-- Page header with logo and tagline-->
    <header class="py-5 bg-light border-bottom mb-4" style="margin-top: 100px;">
        <div class="container">
            <div class="text-center my-5">
                <h1 class="fw-bolder">4.&nbsp와인초보를 위한 와인잔 보관법</h1>
                <p class="lead mb-0">Red Oasis</p>
            </div>
        </div>
    </header>
    
    <div class="mm" style="margin-left: 350px;">
        <!-- Page content-->
        <div class="container">
            <div class="row">
                <!-- Blog entries-->
                <div class="col-lg-8">
                    <!-- Featured blog post-->
                    <div class="card mb-4">
                        <a href="#!"><img class="card-img-top" src="../resources/imag/winetip7.jpg" alt="..." /></a>
                        <!-- <div class="card-body">
                                <div class="small text-muted">January 1, 2023</div>
                                <h2 class="card-title">Featured Post Title</h2>
                                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
                                <a class="btn btn-primary" href="#!">Read more â</a>
                            </div> -->
                    </div>
    
                    <!-- Pagination -->
                    <nav aria-label="Pagination">
<!--                         <hr class="my-0" /> -->
<!--                         <ul class="pagination justify-content-center my-4"> -->
                            <!-- <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">Newer</a></li>
                                <li class="page-item active" aria-current="page"><a class="page-link" href="#!">1</a></li>
                                <li class="page-item"><a class="page-link" href="#!">2</a></li>
                                <li class="page-item"><a class="page-link" href="#!">3</a></li>
                                <li class="page-item disabled"><a class="page-link" href="#!">...</a></li>
                                <li class="page-item"><a class="page-link" href="#!">15</a></li>
                                <li class="page-item"><a class="page-link" href="#!">Older</a></li> -->
                        </ul>
                    </nav>
                </div>
                <!-- Side widgets-->
                <div class="col-lg-4">
                    <!-- Search widget-->
                    <div class="card mb-4">
                        <div class="card-header">목록 더보기
                        </div>
                        <div class="card-body">
                            <div class="input-group">
                                <a href="/wine/listone.kw"><img src="../resources/imag/winetip4.jpg" style="width: 150px; height: 100px; border-radius: 10px; float: left;"></a> 
                                <p style="margin-left: 15px; margin-top: 25px;" ><a href="#" style=" text-decoration: none; color: black;">1. 와인 필수용어 5가지</a><br>
                                    Red Oasis</p>
                                <a href="/wine/listtwo.kw"><img src="../resources/imag/winetip2.jpg" style="width: 150px; height: 100px; border-radius: 10px; float: left; margin-top: 15px;"></a>
                                <p style="margin-left: 15px; margin-top: 40px;">2. 와인 라벨링 읽는 법<br>
                                    Red Oasis</p>
                                <a href="/wine/listthree.kw"><img src="../resources/imag/winetip5.jpg" style="width: 150px; height: 100px; border-radius: 10px; float: left; margin-top: 15px;"></a>
                                <p style="margin-left: 15px; margin-top: 40px;">3. 와인병 보관 하는 법<br>
                                    Red Oasis</p>
                                <a href="/wine/listfour.kw"><img src="../resources/imag/winetip3.jpg" style="width: 150px; height: 100px; border-radius: 10px; float: left; margin-top: 15px;"></a>
                                <p style="margin-left: 15px; margin-top: 40px;">4. 와인잔 보관 하는 법<br>
                                    Red Oasis</p>
                            </div>
                        </div>
                    </div>
                    <!-- Categories widget-->
                    <!-- <div class="card mb-4">
                            <div class="card-header">Categories</div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <ul class="list-unstyled mb-0">
                                            <li><a href="#!">Web Design</a></li>
                                            <li><a href="#!">HTML</a></li>
                                            <li><a href="#!">Freebies</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-6">
                                        <ul class="list-unstyled mb-0">
                                            <li><a href="#!">JavaScript</a></li>
                                            <li><a href="#!">CSS</a></li>
                                            <li><a href="#!">Tutorials</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        Side widget
                        <div class="card mb-4">
                            <div class="card-header">Side Widget</div>
                            <div class="card-body">You can put anything you want inside of these side widgets. They are easy to use, and feature the Bootstrap 5 card component!</div>
                        </div>
                    </div>
                </div>
            </div> -->
                    
    </div>
    </div>
    </div>
    </div>
    <br><br><br><br><br><br>
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
                <!-- Bootstrap core JS-->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
                <!-- Core theme JS-->
                <script src="js/scripts.js"></script>
</body>

</html>