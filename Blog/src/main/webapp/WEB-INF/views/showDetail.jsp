<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 글</title>
</head>
<body>
	<p>${item.pid}</p>
	<h2>${item.title}</h2>
	<p>${item.content}</p>
	<p>${item.regdate}</p>
	<p>조회수: ${item.viewcount}</p>
	<a href="./">이전</a>
</body>
</html>