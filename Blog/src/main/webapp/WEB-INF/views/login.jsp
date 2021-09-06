<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<div>
		<div>
			<h2>로그인</h2>
		</div>
		<form method="post">
			<div>
				<label>ID</label>
				<input type="text" name="id">
			</div>
			<div>
				<label>PASSWORD</label>
				<input type="password" name="pw">
			</div>
			<div>
				<input type="submit" value="로그인">
			</div>
		</form>
		<div>
			<a href="signup">화원가임</a>
			<a href=".">돌아가기</a>
		</div>
	</div>
</body>
</html>