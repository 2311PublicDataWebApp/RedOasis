<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>와인 강의 리스트</title>
	</head>
	<body>
		<h1>와인 강의 테스트</h1>
    <table>
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>장소</th>
                <th>날짜</th>
                <th>첨부파일</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${eList}" var="education" varStatus="i">
            <tr>
                <td>${i.count}</td>
                <td><a href="/education/detail.kw?educationNo=${education.educationNo}">${education.educationName}</a></td>
                <td>${education.educationLocation}</td>
                <td>${education.educationDate}</td>
                <c:if test="${education.imgFileName ne null}">
                    <td>O</td>
                </c:if>
                <c:if test="${education.imgFileName eq null}">
                    <td>X</td>
                </c:if>
            </tr>
            </c:forEach>
			</tbody>
			<tfoot>
<!-- 				페이지네이션 위치 -->
				<tr align="center">
					<td colspan="5">
						<c:if test="${pInfo.startNavi ne '1' }">
							<a href="/education/list.kw?page=${pInfo.startNavi - 1 }">[이전]</a>
						</c:if>
						<c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }" var="p">
							<a href="/education/list.kw?page=${p }">${p }</a>
						</c:forEach>
						<c:if test="${pInfo.endNavi ne pInfo.naviTotalCount }">
							<a href="/education/list.kw?page=${pInfo.endNavi + 1 }">[다음]</a>
						</c:if>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<form action="/education/search.kw" method="get">
							<select name="searchCondition">
								<option value="all">전체</option>
								<option value="writer" selected>작성자</option>
								<option value="title">제목</option>
								<option value="content">내용</option>
							</select>
							<input type="text" name="searchKeyword" placeholder="검색어를 입력해주세요">
							<input type="submit" value="검색">
						</form>
					</td>
					<td>
						<button type="button" onclick="showInsertForm();">글쓰기</button>
					</td>
				</tr>
			</tfoot>
		</table>
		<script>
		function showInsertForm() {
				// 공지사항 글쓰기 페이지 이동 
				location.href="/education/insert.kw"; 
		}
			
	</script> 
	</body>
</html>