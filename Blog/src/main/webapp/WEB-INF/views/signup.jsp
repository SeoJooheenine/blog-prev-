<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script>
	let check_id = false;

	function signup(){
		const form = document.signupForm;

		if(form.id.value ==  ''){
			alert('아이디를 입력해주세요');
			form.id.focus();
			return;
		}

		if(!check_id){
			alert('아이디 중복검사를 해주세요');
			return;
		}
		if(form.pw.value == ''){
			alert('비밀번호를 입력해주세요');
			form.passwd.focus();
			return;
		}
		if(form.pw_check.value == ''){
			alert('비밀번호 확인을 입력해주세요');
			form.pw_check.focus();
			return;
		}
		if(form.pw_check.value != form.pw.value){
			alert('비밀번호가 일치하지 않습니다.');
			form.pw_check.focus();
			return;
		}
		if(form.name.value == ''){
			alert('이름을 입력해주세요');
			form.name.focus();
			return;
		}
		if(form.nickname.value == ''){
			alert('닉네임을 입력해주세요');
			form.nickname.focus();
			return;
		}
		if(form.email.value == ''){
			alert('이메일을 입력해주세요');
			form.email.focus();
			return;
		}
		form.submit();
	}

	function checkId(){
		const form = document.signupForm;
		const xhr = new XMLHttpRequest();
		
		xhr.open("GET", "checkId?id="+ form.id.value, true);
		
		xhr.onreadystatechange = function () { 
			if(xhr.readyState == XMLHttpRequest.DONE) {	
				if(xhr.status == 200) {
					if(xhr.responseText == "OK") {
						if(form.id.value == "") {
							alert("아이디를 입력하세요.")
						} else {
							check_id = true;
							alert("사용 가능한 아이디 입니다.")
						}
					} else {
						alert("이미 등록된 아이디 입니다.")
					}
				}
			}
		};
		xhr.send();
		console.log(xhr.responseText);
	}

	
	function changeId(){
		check_id = false;
	}
	function goBack(){
		location.href = ".";	
	}
</script>
</head>
<body>
	<div>
		<div>
			<h2>회원가입</h2>
		</div>
		<form name="signupForm" method="post">
			<div>
				<label>아이디</label>
				<input type="text" name="id" onchange="changeId()">
				<div onclick="checkId()">중복확인</div>
			</div>
			<div>
				<label>비밀번호</label>
				<input type="password" name="pw">
			</div>
			<div>
				<label>비밀번호 확인</label>
				<input type="password" name="pw_check">
			</div>
			<div>
				<label>이름</label>
				<input type="text" name="name">
			</div>
			<div>
				<label>닉네임</label>
				<input type="text" name="nickname">
			</div>
			<div>
				<label>이메일</label>
				<input type="text" name="email">
			</div>
		</form>	
		<div>
			<button onclick="signup()">회원가입</button>
			<button onclick="goBack()">취소</button>
		</div>
	</div>
</body>
</html>