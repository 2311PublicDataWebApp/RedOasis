<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href="../resources/css/education.css" rel="stylesheet" />
	</head>
	<body>
	<jsp:include page="../../inc/header.jsp"></jsp:include>
		<!-- Page Content-->
    <div class="container px-4 px-lg-5">
        <!-- Heading Row-->
        <div class="row gx-4 gx-lg-5 align-items-center my-5">
            <iframe width="200" height="600" src="https://www.youtube.com/embed/${education.educationLink }"
                title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; 
                encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
            </iframe>
        </div>
        <div class="col-lg-5">
            <h1 class="font-weight-light">${education.educationLocation }<BR>${education.educationName }</h1>
            <p>${education.educationTeacher }</p>
        </div>
        <div class="col-md-4 mb-5" style="margin-left: 800px; width: 400px; margin-top: -150px;">
            <div class="card h-100">
                <div class="card-body">
                    <div>
                        <img src="${education.imgFilePath }" alt="강사사진" style="">
                    </div>
                    <br>
                    <h2 class="card-title">담당 강사 정보</h2>
                    <p class="card-text">${education.educationTeacher }강사<br>
                        ${education.educationContent }
                    </p>
                </div>
                <div class="card-footer"><a class="btn btn-primary btn-sm" href="/education/list.kw">다른 강의 보기</a></div>
                <c:if test="${userId eq 'BOSS'}">
                <div class="card-footer"><a class="btn btn-primary btn-sm" onclick="deleteNotice(${education.educationNo});">삭제</a></div>
                </c:if>
            </div>
        </div>
    </div>
    </div>
    </div>
    <!-- Call to Action-->
    <div class="card text-white bg-secondary my-5 py-4 text-center">
        <div class="card-body">
            <p class="text-white m-0"></p>
        </div>
    </div>
    <!-- Content Row-->
    <!-- <div class="row gx-4 gx-lg-5">
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title">Card One</h2>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
                        </div>
                        <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">More Info</a></div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title">Card Two</h2>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt pariatur voluptatem sunt quam eaque, vel, non in id dolore voluptates quos eligendi labore.</p>
                        </div>
                        <div class="card-footer"><a class="btn btn-primary btn-sm" href="#!">More Info</a></div>
                    </div>
                </div> -->
                <script type="text/javascript">
			function deleteNotice(educationNo) {
				if (confirm("삭제하시겠습니까?")) {
					location.href = "/education/delete.kw?educationNo=" + educationNo;
				}
			}
			
			function showNoticeList() {
				location.href = "/notice/list.kh";
			}
			</script>
	</body>
</html>