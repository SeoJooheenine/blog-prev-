<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리list</title>
</head>
<body>
	<div>
		<h2>카테고리</h2>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>번호</th>
						<th>카테고리명</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="3">등록된 카테고리가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.cid}</td>
							<td>${item.cname}</td>
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