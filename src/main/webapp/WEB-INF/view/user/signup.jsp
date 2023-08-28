<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/user/join" method="post">

	<input type="text" name="id" placeholder="사용자 ID"><br>
		<input type="text" name="name" placeholder="사용자 이름"><br>
		<input type="password" name="pass" placeholder="사용자 비밀번호"><br>
		<input type="text" name="email" placeholder="사용자 이메일" ><br>
		<input type="submit" value="회원가입">

</form>
</body>
</html>