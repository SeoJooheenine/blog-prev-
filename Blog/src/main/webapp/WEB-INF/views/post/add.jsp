<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록</title>
</head>
<body>
	<div>
		<div>
			<h2>글쓰기</h2>
		</div>
		<form method="post">
			<div>
				<select name="pcid">
					<option value="" selected="selected">카테고리</option>
					<c:forEach var="item" items="${pCategoryList}">
						<option value="${item.pcid}">${item.pcname}</option>
					</c:forEach>
				</select>
			</div>
			<div>
				<label>제목</label>
				<input type="text" name="title" placeholder="제목입력">
			</div>
			<div>
				<label>내용</label>
				<textarea rows="15" cols="80" name="content" placeholder="내용입력"></textarea>
			</div>
			<button>등록</button>
		</form>
	</div>
	<div>
		<a href="../../">처음으로</a>
	</div>
</body>
</html>