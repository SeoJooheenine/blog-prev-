<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blog</title>
</head>
<body>
<div>
	<div>
		<h1>BLOG</h1>
	</div>
	<c:if test="${sessionScope.id == null }">
		<div>
			<a href="login">로그인</a>
			<a href="signup">회원가입</a>
		</div>
	</c:if>
	<c:if test="${sessionScope.id != null }">
		<div>
			${sessionScope.member.nickname}님 환영합니다.
			<a href="logout">로그아웃</a>
		</div>	
	</c:if>
	<div>
		<a href="post/${sessionScope.id}/add">글쓰기</a>
		<a href="my/${sessionScope.id}/">내 블로그</a>
		<a href="category/list">카테고리관리</a>
		<a href="post/${sessionScope.id}/list">글관리</a>
	</div>
	<div>
		<h2>최신글</h2>
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
							<td><a href="showDetail?pid=${item.pid}">${item.title}</a></td>
							<td>${item.content}</td>
							<td><fmt:formatDate value="${item.regdate}" pattern="yy.MM.dd. HH:mm"/> </td>
							<td>${item.id}</td>
							<td>${item.pcname}</td>
							<td>${item.viewcount}</td>
						</tr>					
					</c:forEach>
				</tbody>
			</table>
		</div>
</div>
</body>
</html>