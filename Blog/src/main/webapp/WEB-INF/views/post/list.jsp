<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 list</title>
</head>
<body>
	<div>
		<h2>글목록</h2>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>내용</th>
						<th>작성일</th>
						<th>id</th>
						<th>카테고리명</th>
						<th>조회수</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="8">등록된 카테고리가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.pid}</td>
							<td>${item.title}</td>
							<td>${item.content}</td>
							<td><fmt:formatDate value="${item.regdate}" pattern="yy.MM.dd. HH:mm"/> </td>
							<td>${item.id}</td>
							<td>${item.pcname}</td>
							<td>${item.viewcount}</td>
							<td>
								<a href="delete?cid=${item.cid}">삭제</a>
								<a href="update?cid=${item.cid}">변경</a>
							</td>
						</tr>					
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<a href="add">등록</a>
		</div>
		<div>
			<a href="../">홈으로</a>
		</div>
	</div>
</body>
</html>