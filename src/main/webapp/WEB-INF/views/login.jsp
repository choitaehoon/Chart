<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css">

<style>
#aaa
{
	position:absolute;
	top:130px;
	right:-120px;
}
</style>

</head>

<body>

	<div class="container" id="aaa">
	<form action="signUpAfter" method="post">
		<h1>로그인</h1>
		아이디: <input type="text"name="userId"><br/>
		비번: <input type="password"name="password"><br/>
		<input type="button" class="btn btn-primary" value="회원가입" onclick="location.href='membership'"><br/><br/>
		<input type="submit" class="btn btn-primary" value="로그인">
	</form>
	</div>
</body>
</html>