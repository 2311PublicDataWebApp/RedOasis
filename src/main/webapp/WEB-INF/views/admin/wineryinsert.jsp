<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>와이너리 정보 입력</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f5f5f5;
        }
        .wine-theme {
            background-color: #720026; /* 부르고뉴 색상 */
            color: #fff;
        }
        h2, label {
            font-family: 'Noto Serif KR', serif;
        }
        .form-control, .form-control-file, .btn {
            border-radius: 0;
        }
        .btn-wine-theme {
            background-color: #4a001f; /* 더 진한 부르고뉴 색상 */
            color: #fff;
            border: none;
        }
        .btn-wine-theme:hover {
            background-color: #370017;
        }
        .form-section {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0,0,0,.1);
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="form-section">
            <h2 class="mb-4 wine-theme">와이너리 정보 입력</h2>
            <form action="/admin/wineryinsert.kw" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="winery-name">와이너리 이름</label>
                    <input name="wineryName" type="text" class="form-control" id="winery-name" required>
                </div>
                <div class="form-group">
                    <label>와이너리 주소</label>
                    <input name="wineryAddress" type="text" id="address" placeholder="주소" style="width:300px;">
					<button class="btn btn-outline-secondary" type="button" id="find-address" style="background-color: #720026; color: white;">주소 찾기</button>
                </div>
                <div class="form-group">
                    <label for="winery-website">와이너리 웹 페이지 주소</label>
                    <input name="wineryWebAddress" type="url" class="form-control" id="winery-website">
                </div>
                <div class="form-group">
                    <label for="winery-phone">와이너리 전화번호</label>
                    <input name="wineryPhone"  type="tel" class="form-control" id="winery-phone">
                </div>
                <div class="form-group">
                    <label for="wineryWine">대표 생산 와인</label>
                    <input name="madeWine" type="text" class="form-control" id="wineryWine">
                </div>
                <div class="form-group">
                    <label for="winery-description">와이너리 설명</label>
                    <textarea name="wineryDescription" class="form-control" id="winery-description" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label for="winery-photo">와이너리 사진</label>
                    <input type="file" name="uploadFile" class="form-control-file" id="winery-photo">
                </div>
                <button type="submit" class="btn btn-wine-theme">제출</button>
                <button type="button" class="btn btn-wine-theme">취소</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
	document.getElementById('find-address').addEventListener('click', function() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 사용자가 주소를 선택하면, 선택한 주소 정보를 입력 필드에 채웁니다.
	            var addr = ''; // 주소 변수
	            
	            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져옵니다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했다면
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했다면(J)
	                addr = data.jibunAddress;
	            }
	            
	            // 주소 입력 필드에 값을 채웁니다.
	            document.getElementById('address').value = addr;
	        }
	    }).open();
	});
	</script>
</body>
</html>

