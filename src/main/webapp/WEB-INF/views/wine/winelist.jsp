<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>레드 오아시스</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
		<style>
			body {
				background-color: #d8c3a5; /* 옅은 목재색 배경 */
    			color: #5a4233; /* 배경색에 대비되는 어두운 텍스트 색상 */
			    font-family: 'Roboto', sans-serif;
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
		    	display: flex;
		    	-ms-flex-wrap: wrap;
		    	flex-wrap: nowrap;
		    	margin-right: -15px;
		    	margin-left: -15px;
		    	flex-direction: row;
		    	align-items: center;
		    	justify-content: space-between;
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
			  justify-content: space-between; /* 컨텐츠를 상하로 균등 분포 */
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
		</style>
	</head>
	<body>
		<header></header>
		<main>
			<section>
				<span>
					<div class="container mt-5">
					    <div class="row" style="position: relative; right: 130px;">
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
					            <div class="search-box" style="position: relative; right: 130px;">
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
			<section>
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
			<section class="">
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
		<footer></footer>
	</body>
</html>