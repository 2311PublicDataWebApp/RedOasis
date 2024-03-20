<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와이너리 관리</title>
</head>
<body>
	<h1>(임시) 관리자 네브바</h1>
	<a href="/admin/userlist.kw">회원관리</a>
	<a href="/admin/boardlist.kw">게시판관리</a>
	<a href="#">와인관리</a>
	<a href="/admin/winerylist.kw">와이너리관리</a>
	<a href="#">이달의 와인 관리</a>
    <h1>와이너리 관리</h1>
    <h2>등록된 와이너리 수 : ${totalCount}</h2>
	<!-- 여기 미완 -->
    <form action="/" method="get"> 
		<input type="text" name="searchKeyword" placeholder="검색어 입력" value="${searchKeyword }">
		<input type="submit" value="검색">
    </form>
    <form id="sortForm">
    	정렬 : 
	    <select id="sortList" name="sortList" onchange="sortPage()">
		  	<option value=WINERY_NO <% if ("WINERY_NO".equals(request.getParameter("sortList"))) { %> selected <% } %>>와이너리 번호</option>
		    <option value="WINERY_NAME" <% if ("WINERY_NAME".equals(request.getParameter("sortList"))) { %> selected <% } %>>와이너리 이름</option>
		    <option value="WINERY_ADDRESS" <% if ("WINERY_ADDRESS".equals(request.getParameter("sortList"))) { %> selected <% } %>>와이너리 주소</option>
	    </select>
	</form>
    <table> 
        <thead>
            <tr>
                <th>와이너리 번호</th>
                <th>와이너리 이름</th>
                <th>와이너리 주소</th>
                <th>대표와인</th>
                <th>수정</th>
            </tr>                
        </thead>

        <tbody>
            <c:forEach items="${wryList}" var="wine">
                <tr>
                    <td>${wine.wineryNo}</td>
                    <td>${wine.wineryName}</td>
                    <td>${wine.wineryAddress}</td>
                    <td>${wine.madeWine}</td>
                    <td><button>수정</button></td>
                </tr>
            </c:forEach>
        </tbody>
		<!-- 페이지네이션 -->
		<tfoot>
			<tr align="center">
				<td colspan="5">
					<c:if test="${pInfo.startNavi ne '1' }">
					    <a href="/admin/winerylist.kw?page=${pInfo.startNavi -1 }&sortList=${param.sortList}">이전</a>
					</c:if>
					<c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }" var="p">
					    <a href="/admin/winerylist.kw?page=${p }&sortList=${param.sortList}">${p }</a>
					</c:forEach>
					<c:if test="${pInfo.endNavi ne pInfo.naviTotalCount }">
					    <a href="/admin/winerylist.kw?page=${pInfo.endNavi +1 }&sortList=${param.sortList}">다음</a>
					</c:if>
				</td>
			</tr>
	    </tfoot>
    </table>
	<script>
	function sortPage() {
	    var sortList = document.getElementById("sortList").value;
	    window.location.href = "/admin/winerylist.kw?sortList=" + sortList;
	}
	</script>
</body>
</html>
