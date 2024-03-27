<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        <link href="/RedOasis/src/main/webapp/resources/css/tastingDetail.css" rel="stylesheet" />
        <script type="text/javascript"
            src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=cbcb5qjha6"></script>
    </head>

    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">
            <header class="bg-dark py-5" style="margin-top: 200px;">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-center text-xl-start">
                                <h1 class="display-5 fw-bolder text-white mb-2">4/8(월) 비뉴 베르데(Vinho Verde) 그랜드 테이스팅 2024
                                </h1>
                                <p class="lead fw-normal text-white-50 mb-4">
                                    <비뉴 베르데 그랜드 테이스팅>에 와인수입사 및 와인업계전문인을 초대합니다.



                                        포르투갈의 최대 와인산지 비뉴 베르데에서 총 19개의 프리미엄 와인 생산자가 서울을 찾아옵니다.

                                        호텔 최상층에서 열리는 시음회에 참석하시어 따스하고 싱그러운 봄 햇살 맞으며 생산자들과 직접 소통하고 비뉴 베르데 와인의 독특한 개성을
                                        경험해보세요.

                                </p>
                                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                    <a class="btn btn-primary btn-lg px-4 me-sm-3" href="#features">목록으로</a>
                                    <!-- <a class="btn btn-outline-light btn-lg px-4" href="#!">Learn More</a> -->
                                </div>
                            </div>
                        </div>
                        <!-- 지도 -->
                        <div id="map" style="width:100%;height:400px;"></div>
                        <script>
                            var mapOptions = {
                                center: new naver.maps.LatLng(37.567928652765055, 126.9831683139453),
                                zoom: 17
                            };

                            var map = new naver.maps.Map('map', mapOptions);

                            var markerOptions = {
                                position: new naver.maps.LatLng(37.567928652765055, 126.9831683139453),
                                map: map
                            };

                            var markerOptions2 = {
                                position: new naver.maps.LatLng(37.56683333744476, 126.97935403781713),
                                map: map
                            };

                            var markers = [];
                            var marker = new naver.maps.Marker(markerOptions);
                            markers.push(marker);
                            var marker2 = new naver.maps.Marker(markerOptions2);
                            markers.push(marker2);

                            var contentString = [
                                '<div class="iw_inner">',
                                '   <h3>kh정보교육원</h3>',
                                '   <p>서울 중구 남대문로 120 대일빌딩 2층, 3층<br />',
                                '       <img src="/img/example/hi-seoul.jpg" width="55" height="55" alt="kh정보교육원" class="thumb" /><br />',
                                '       02-1544-9970 | 학원 &gt; 학원<br />',
                                '       <a href="https://khedu.co.kr/main/main.kh" target="_blank">https://khedu.co.kr/main/main.kh</a>',
                                '   </p>',
                                '</div>'
                            ].join('');

                            var contentString2 = [
                                '<div class="iw_inner">',
                                '   <h3>맥도날드 서울시청점</h3>',
                                '   <p>서울 중구 남대문로9길 51 효덕빌딩<br />',
                                '       <img src="/img/example/hi-seoul.jpg" width="55" height="55" alt="맥도날드" class="thumb" /><br />',
                                '       02-6215-8100 | 음식점 &gt; 패스트푸드<br />',
                                '       <a href="https://www.mcdonalds.co.kr/" target="_blank">https://www.mcdonalds.co.kr/</a>',
                                '   </p>',
                                '</div>'
                            ].join('');

                            var infoWindow = new naver.maps.InfoWindow({
                                content: contentString
                            });

                            var infoWindow2 = new naver.maps.InfoWindow({
                                content: contentString2
                            });

                            naver.maps.Event.addListener(marker, "click", function (e) {
                                if (infoWindow.getMap()) {
                                    infoWindow.close();
                                } else {
                                    infoWindow.open(map, marker);
                                }
                            });

                            naver.maps.Event.addListener(marker2, "click", function (e) {
                                if (infoWindow2.getMap()) {
                                    infoWindow2.close();
                                } else {
                                    infoWindow2.open(map, marker2);
                                }
                            });
                            // 			infowindow.open(map, marker);
                            // 			infowindow2.open(map, marker2);

                        </script>
                        <!-- 지도끝 -->
                        <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img
                                class="img-fluid rounded-3 my-5" src="https://dummyimage.com/600x400/343a40/6c757d"
                                alt="..." /></div>
                    </div>
                </div>
            </header>
            <!-- Features section-->
            <section class="py-5" id="features">
                <div class="container px-5 my-5">
                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5 mb-lg-0">
                            <h2 class="fw-bolder mb-0">4/8(월) 비뉴 베르데(Vinho Verde) 그랜드 테이스팅 2024</h2>
                        </div>
                        <div class="col-lg-8">
                            <div class="row gx-5 row-cols-1 row-cols-md-2">
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i
                                            class="bi bi-collection"></i></div>
                                    <h2 class="h5">주최자</h2>
                                    <p class="mb-0">앰배서더 서울 풀만 호텔</p>
                                </div>
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i
                                            class="bi bi-building"></i></div>
                                    <h2 class="h5">장소</h2>
                                    <p class="mb-0">비뉴 베르데 Vinho Verde</p>
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
                                <img src="/RedOasis/src/main/webapp/resources/assets/20240229151102152591.png" alt=""
                                    style="width: 1800px; margin-left: -200px; margin-top: 20px;">
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="/RedOasis/src/main/webapp/resources/js/scripts_tastingDetail.js"></script>
    </body>

    </html>