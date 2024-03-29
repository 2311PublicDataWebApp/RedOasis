<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/RedOasis/src/main/webapp/resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../resources/css/tastingDetail.css" rel="stylesheet" />
        <script type="text/javascript"
            src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=cbcb5qjha6"></script>
    </head>

    <body class="d-flex flex-column h-100">
    <jsp:include page="../../inc/header.jsp"></jsp:include>
        <main class="flex-shrink-0">
            <header class="bg-dark py-5" style="margin-top: 200px;">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-center text-xl-start">
                                <h1 class="display-5 fw-bolder text-white mb-2">${tasting.tastingName}
                                </h1>
                                <p class="lead fw-normal text-white-50 mb-4">
                                   ${tasting.tastingContent }
                                </p>
                                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                    <a class="btn btn-primary btn-lg px-4 me-sm-3" href="/tasting/list.kw">목록으로</a>
                                    <c:if test="${userId eq 'BOSS'}">
                                    <a class="btn btn-primary btn-lg px-4 me-sm-3" onclick="deleteNotice(${tasting.tastingNo});">삭제</a>
									</c:if>
                                    <!-- <a class="btn btn-outline-light btn-lg px-4" href="#!">Learn More</a> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img
                                class="img-fluid rounded-3 my-5" src="${tasting.imgFilePath}"
                                alt="..." /></div>
                    </div>
                </div>
                                <script type="text/javascript">
									function deleteNotice(tastingNo) {
										if (confirm("삭제하시겠습니까?")) {
											location.href = "/tasting/delete.kw?tastingNo=" + tastingNo;
										}
									}
									</script>
            </header>
            <!-- Features section-->
            <section class="py-5" id="features">
                <div class="container px-5 my-5">
                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5 mb-lg-0">
                            <h2 class="fw-bolder mb-0">${tasting.tastingName}</h2>
                        </div>
                        <div class="col-lg-8">
                            <div class="row gx-5 row-cols-1 row-cols-md-2">
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i
                                            class="bi bi-collection"></i></div>
                                    <h2 class="h5">주최자</h2>
                                    <p class="mb-0">${tasting.tastingWriter }</p>
                                </div>
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i
                                            class="bi bi-building"></i></div>
                                    <h2 class="h5">장소</h2>
                                    <p class="mb-0">${tasting.tastingLocation }</p>
                                </div>
                                <!-- <div class="col mb-5 mb-md-0 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-toggles2"></i></div>
                                    <h2 class="h5">Featured title</h2>
                                    <p class="mb-0">Paragraph of text beneath the heading to explain the heading. Here is just a bit more text.</p>
                                </div>
                                <div class="col h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-toggles2"></i></div>
                                    <h2 class="h5">Featured title</h2>
                                    <p class="mb-0">Paragraph of text beneath the heading to explain the heading. Here is just a bit more text.</p>
                                </div> -->
                              
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/js/scripts_tastingDetail.js"></script>
    </body>

    </html>