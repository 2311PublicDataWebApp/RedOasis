<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
</head>
<body>
	<h1>(임시) 관리자 네브바</h1>
	<a href="/admin/userlist.kw">회원관리</a>
	<a href="/admin/boardlist.kw">게시판관리</a>
	<a href="#">와인관리</a>
	<a href="/admin/winerylist.kw">와이너리관리</a>
	<a href="#">이달의 와인 관리</a>
    <h1>회원 관리</h1>
    <h2>총 가입자 수 : ${totalCount}</h2>
	<!-- 여기 미완 -->
    <form action="/" method="get"> 
		<input type="text" name="searchKeyword" placeholder="검색어 입력" value="${searchKeyword }">
		<input type="submit" value="검색">
    </form>
    <form id="sortForm">
    	정렬 : 
	    <select id="sortList" name="sortList" onchange="sortPage()">
		  	<option value="USER_ID" <% if ("USER_ID".equals(request.getParameter("sortList"))) { %> selected <% } %>>아이디</option>
		    <option value="USER_NAME" <% if ("USER_NAME".equals(request.getParameter("sortList"))) { %> selected <% } %>>이름</option>
		    <option value="USER_BLACKLIST" <% if ("USER_BLACKLIST".equals(request.getParameter("sortList"))) { %> selected <% } %>>블랙리스트</option>
	    </select>
	</form>
    <table> 
        <thead>
            <tr>
                <th>아이디</th>
                <th>이름</th>
                <th>휴대폰 번호</th>
                <th>Email</th>
                <th>차단</th>
            </tr>                
        </thead>

        <tbody>
            <c:forEach items="${uList}" var="user">
                <tr>
                    <td>${user.userId}</td>
                    <td>${user.userName}</td>
                    <td>${user.userPhone}</td>
                    <td>${user.userEmail}</td>
                    <td>${user.userBlackList}</td>
                </tr>
            </c:forEach>
        </tbody>
		<!-- 페이지네이션 -->
		<tfoot>
			<tr align="center">
				<td colspan="5">
					<c:if test="${pInfo.startNavi ne '1' }">
					    <a href="/admin/userlist.kw?page=${pInfo.startNavi -1 }&sortList=${param.sortList}">이전</a>
					</c:if>
					<c:forEach begin="${pInfo.startNavi }" end="${pInfo.endNavi }" var="p">
					    <a href="/admin/userlist.kw?page=${p }&sortList=${param.sortList}">${p }</a>
					</c:forEach>
					<c:if test="${pInfo.endNavi ne pInfo.naviTotalCount }">
					    <a href="/admin/userlist.kw?page=${pInfo.endNavi +1 }&sortList=${param.sortList}">다음</a>
					</c:if>
				</td>
			</tr>
	    </tfoot>
    </table>
	<script>
	function sortPage() {
	    var sortList = document.getElementById("sortList").value;
	    window.location.href = "/admin/userlist.kw?sortList=" + sortList;
	}
	</script>
</body>
</html>