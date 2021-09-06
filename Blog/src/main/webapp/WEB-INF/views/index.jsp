<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
</div>
</body>
</html>