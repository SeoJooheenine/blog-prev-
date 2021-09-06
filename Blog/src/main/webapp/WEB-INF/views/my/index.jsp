<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my</title>
</head>
<body>
	<div>
		<h1>BLOG</h1>
	</div>
	<c:if test="${sessionScope.id != null }">
		<div>
			${sessionScope.member.nickname}님의 블로그.
			<a href="logout">로그아웃</a>
		</div>	
	</c:if>
	<div>
		<a href="../../post/${sessionScope.id}/add">글쓰기</a>
		<a href="../../${sessionScope.id}/manage">관리</a>
		<a href="../../">홈으로</a>
	</div>
</body>
</html>