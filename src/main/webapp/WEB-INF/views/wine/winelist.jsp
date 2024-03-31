<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>레드 오아시스</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@400;700&family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<!-- Custom styles for this template -->
	<link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="blog.css" rel="stylesheet">
	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="../../resources/assets/favicon.ico" />
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="../../resources/css/style.css" rel="stylesheet" />
		<style>
			body {
				background-color: #d8c3a5; /* 옅은 목재색 배경 */
    			color: #5a4233; /* 배경색에 대비되는 어두운 텍스트 색상 */
			    font-family: 'Roboto', sans-serif;
			}
			#section-header{
				padding-top: 9em;
			}
			
			#section-header, #section-main{
				padding-bottom: 0;
			}
			#section-main, #section-footer{
				padding-top: 0;
			}
			main {
				display: flex;
	  			flex-direction: column;
			}
		    select{
		        background-color: #722f37; /* 와인색 */
		        color: white;
		        border-color: #722f37; /* 와인색 테두리로 다시 조정 */
		    }
		    
		    .btn-wine{
		        background-color: #722f37; /* 와인색 */
		        color: white;
		        border-color: #722f37; /* 와인색 테두리로 다시 조정 */
		    }
		    
		    .btn-wine:hover  {
		        background-color: #5a242e; /* 버튼 호버 시 좀 더 어두운 와인색 */
		        color: white;
		    }
		    
		    .form-control:focus {
		        border-color: #722f37; /* 포커스 시 와인색 테두리 */
		        box-shadow: 0 0 0 0.2rem rgba(114, 47, 55, 0.25);
		    }
		    .category-text {
		        margin-bottom: 20px; /* 검색창과의 간격을 조정 */
		        font-size: 16px; /* 텍스트 크기 조정 */
		        
		    }
		    .row{
		    	width: 80%;
		    	display: flex;
		    	-ms-flex-wrap: wrap;
		    	flex-wrap: nowrap;
		    	margin-right: -15px;
		    	margin-left: -15px;
		    	flex-direction: row;
		    	align-items: center;
		    	justify-content: space-around;
		    }
		    .wine-card {
			    float: left;
			    margin: 0 40px 20px 40px;
			    width: 300px;
			    background-color: #f5f5dc; /* 배경색 */
			    border: 1px solid #ccc; /* 테두리 */
			    box-shadow: 0 2px 4px rgba(0,0,0,0.1); /* 그림자 */
			    border-radius: 8px; /* 모서리 둥글게 */
			    overflow: hidden; /* 내용물이 테두리 밖으로 나가지 않게 */
			}
			
			.wine-image {
			    width: 100%;
			    height: auto;
			    display: block; /* 이미지 밑의 공간 제거 */
			}
			
			.wine-info {
			    padding: 10px;
			}
			
			.wine-name, .wine-score {
			    float: left;
			    font-size: 16px;
			    font-weight: bold;
			    color: #333; /* 글씨 색상 */
			}
			
			.wine-category {
			    float: right;
			    font-size: 16px;
			    color: #777; /* 글씨 색상 */
			}
			
			br.clear {
			    clear: both;
			}
			.main-footer {
			  display: flex;
			  flex-direction: column;
			  justify-content: space-around; /* 컨텐츠를 상하로 균등 분포 */
			  align-items: center; /* 가로 중앙 정렬 */
			  height: 500px; /* 예시 높이, 실제 사용시 조정 필요 */
			}
			
			.pagination {
			  display: flex;
			  justify-content: center; /* 페이지네이션 항목들을 가로 중앙 정렬 */
			  gap: 10px; /* 항목들 사이의 간격 */
			}
			
			.pagination a {
			  text-decoration: none;
			  padding: 5px 10px;
			  border: 1px solid #8B4513; /* 짙은 갈색 테두리 */
			  background-color: #5E2C00; /* 더 짙은 갈색 배경 */
			  color: #FFFFFF; /* 흰색 텍스트 */
			  transition: background-color 0.3s, color 0.3s; /* 부드러운 색상 전환 효과 */
			}
			
			.pagination a:hover {
				background-color: #722F37; /* 와인색 배경으로 변경 */
  				color: #FFD700; /* 금색 텍스트로 변경 */
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
		<!-- Navigation-->
    <div id="navbar-square" class="navbar navbar-expand-lg navbar-dark fixed-top"></div>
    
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="/"><img src="../../resources/imag/main-logo.png" alt="..." style="width: 100px; height: 50px;"/></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars ms-1"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                    <li class="nav-item"><a class="nav-link" href="/winery/main.kw">와이너리</a></li>
                    <li class="nav-item"><a class="nav-link" href="/wine/winelist.kw">와인목록</a></li>
                    <li class="nav-item"><a class="nav-link" href="/wine/list.kw">와인설명</a></li>
                    <li class="nav-item"><a class="nav-link" href="/board/list.kw">자유게시판</a></li>
                    <li class="nav-item"><a class="nav-link" href="/tasting/list.kw">교육/시음회</a></li>
                </ul>
                    <!-- 로그인 상태에 따른 처리 -->
				<c:choose>
				    <c:when test="${loggedIn}">
				        <!-- 로그인 중인 경우에 보이는 내용 -->
				        <button type="button" class="btn btn-outline-primary me-2" onclick="window.location.href=' /user/logout.kw'">로그아웃</button>
				        <button type="button" class="btn btn-primary" onclick="window.location.href='/user/updateuser.kw'">마이페이지</button>
				    </c:when>
				    <c:otherwise>
				        <!-- 로그인 중이 아닌 경우에 보이는 내용 -->
				        <button type="button" class="btn btn-outline-primary me-2" onclick="window.location.href='/user/login.kw'">로그인</button>
				        <button type="button" class="btn btn-primary" onclick="window.location.href='/user/register.kw'">회원가입</button>
				    </c:otherwise>
				</c:choose>
            </div>
        </div>
    </nav>
		<main>
			<section id="section-header">
				<span>
					<div class="container mt-5">
					    <div class="row">
					    	<div >
					        	<div class="btn-group" role="group" aria-label="Wine Categories">
								  <a href="/wine/winelist.kw?"><button type="button" class="btn btn-light">전체</button></a>
								  <a href="/wine/winelist.kw?category=RED"><button type="button" class="btn btn-light">RED</button></a>
								  <a href="/wine/winelist.kw?category=WHITE"><button type="button" class="btn btn-light">WHITE</button></a>
								  <a href="/wine/winelist.kw?category=ROSE"><button type="button" class="btn btn-light">ROSE</button></a>
								  <a href="/wine/winelist.kw?category=SPARKLING"><button type="button" class="btn btn-light">SPARKLING</button></a>
								</div>
					    	</div>
					        <div class="col-md-6">
					            <div class="search-box" style="position: relative; right: 330px;">
					                <form class="search-form" action="/wine/winelist.kw" method="get"> 
					                    <div class="input-group">
					                        <input type="text" class="form-control" placeholder="와인 검색..." name="keyword">
					                        <div class="input-group-append">
					                            <button class="btn btn-wine" type="submit">검색</button>
					                        </div>
					                    </div>
					                </form>
					            </div>
					        </div>
    					</div>
					</div>
				</span>
			</section>
			<hr>
			<section id="section-main">
					<c:forEach var="wine" items="${wList}" varStatus="status" >
						<div class="wine-card">
						    <a href="/wine/winedetail.kw?wineNo=${wine.wineNo}"><img alt="와인" src="${wine.imgFilePath }" class="wine-image"><br></a>
						    <div class="wine-info">
						        <a href="/wine/winedetail.kw?wineNo=${wine.wineNo}"><span class="wine-name">${wine.wineName }</span></a>
						        <span class="wine-category">${wine.wineCategory}</span> <br clear="both">
						        <span class="wine-score">${wine.wineScore } 점</span>
						    </div>
						</div>
						<c:if test="${status.count % 5 == 0 && !status.last}">
						    <div style="clear:both;"></div> <!-- 혹은 적절한 줄 바꿈 방식 사용 -->
						</c:if>
					</c:forEach>
			</section>
			<section id="section-footer">
				<div class="pagination">
					<!-- keyword가 null아닐 때 -->
					<c:if test="${keyword ne null}">
						<c:if test="${pInfo.startNavi ne '1' }">
						    <a href="/wine/winelist.kw?keyword=${keyword }&page=${pInfo.startNavi -1 }">&laquo;</a>
						</c:if>
					    <c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }" var="p">
						    <a href="/wine/winelist.kw?keyword=${keyword }&page=${p }">${p }</a>
						</c:forEach>
					    <c:if test="${pInfo.endNavi ne pInfo.naviTotalCount }">
						    <a href="/wine/winelist.kw?keyword=${keyword }&page=${pInfo.endNavi +1 }">&raquo;</a>
						</c:if>
					</c:if>
					<!-- keyword가 null일 때 -->
					<c:if test="${keyword eq null}">
						<!-- 카테고리가 null일 때 -->
						<c:if test="${category eq null}">
							<c:if test="${pInfo.startNavi ne '1' }">
						    <a href="/wine/winelist.kw?page=${pInfo.startNavi -1 }">&laquo;</a>
							</c:if>
						    <c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }" var="p">
							    <a href="/wine/winelist.kw?page=${p }">${p }</a>
							</c:forEach>
						    <c:if test="${pInfo.endNavi ne pInfo.naviTotalCount }">
							    <a href="/wine/winelist.kw?page=${pInfo.endNavi +1 }">&raquo;</a>
							</c:if>
						</c:if>
						<!-- 카테고리가 null아닐 때 -->
						<c:if test="${category ne null}">
							<c:if test="${pInfo.startNavi ne '1' }">
						    <a href="/wine/winelist.kw?category=${category }&page=${pInfo.startNavi -1 }">&laquo;</a>
							</c:if>
						    <c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }" var="p">
							    <a href="/wine/winelist.kw?category=${category }&page=${p }">${p }</a>
							</c:forEach>
						    <c:if test="${pInfo.endNavi ne pInfo.naviTotalCount }">
							    <a href="/wine/winelist.kw?category=${category }&page=${pInfo.endNavi +1 }">&raquo;</a>
							</c:if>
						</c:if>
					</c:if>
				</div>
			</section>
		</main>
		<!-- Footer-->
	<footer class="footer py-4">
	    <div class="container">
	        <div class="row align-items-center"style="position: relative; left: 150px">  
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
	</body>
</html>