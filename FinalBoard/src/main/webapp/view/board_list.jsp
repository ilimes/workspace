<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/board_list.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<!-- <form action="search.bo" method="post"> -->
	<form action="boardList.bo" method="post">
		<table class="searchTable">
			<tr>
				<td>
					<select name="searchKeyword">
						<option value="TITLE">제목</option>
						<option value="WRITER">작성자</option>
					</select>
				</td>
				<td><input type="text" name="searchValue"></td>
				<td><input type="submit" value="검색"></td>
			</tr>
		</table>
	</form>
	<div class="boardDiv">
		총 ${count }건
		<%-- 총 ${list.size() }건 --%>
	</div>
	<div>
		<table>
			<colgroup>
				<col width="10%">
				<col width="*">
				<col width="15%">
				<col width="15%">
				<col width="10%">
				<col width="15%">
			</colgroup>
			<thead>
				<tr>
					<td>No</td>
					<td>제목</td>
					<td>작성자</td>
					<td>작성일</td>
					<td>조회수</td>
					<td>첨부파일</td>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list }">
						<tr>
							<td colspan="6"><center>조회된 데이터가 없습니다 :(</center></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list }" var="board" varStatus="status">
							<tr>
								<%-- <td>${board.boardNum } / ${status.index } / ${status.count }</td> --%>
								<%-- <td>${list.size() - status.index }</td> --%>
								<td>${board.boardNum }</td>
								<td><a href="boardDetail.bo?boardNum=${board.boardNum }">${board.title }</a></td>
								<td>${board.writer }</td>
								<td>${board.createDate }</td>
								<td>${board.readCnt }</td>
								<td>${board.attachedName }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	<div class="btnDiv">
		<c:choose>
			<c:when test="${not empty sessionScope.loginInfo }">
				<div class="btn" onclick="location.href='regBoardForm.bo';">글쓰기</div>
			</c:when>
			<c:otherwise>
				<div class="boardDiv">현재 로그아웃 상태입니다. 로그인 해주세요 :)</div>
			</c:otherwise>
		</c:choose>
	</div>
</div>
<div style="text-align: center; font-weight: bold;">
	<c:if test="${pageInfo.prev }">
		<a href="boardList.bo?nowPage=${pageInfo.beginPage - 1 }">이전</a>
	</c:if>
	<c:forEach begin="${pageInfo.beginPage }" end="${pageInfo.endPage }" var="pageIndex">
		<a href="boardList.bo?nowPage=${pageIndex }">
			<span <c:if test="${pageInfo.nowPage eq pageIndex }">style="color: red;"</c:if> >${pageIndex }</span>
		</a>
	</c:forEach>
	<c:if test="${pageInfo.next }">
		<a href="boardList.bo?nowPage=${pageInfo.endPage + 1 }">다음</a>
	</c:if>
</div>
</body>
</html>