<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
	<form action="login" method="post">
		<h1>회원 가입</h1>
		아이디: <input type="text" name="userId"><br/>
		비번: <input type="password" name="password"><br/>
		이름: <input type="text" name="name"><br/>
<!-- 		취향: -->
<!-- 		 <select name="taste"> -->
<!-- 			<option value="발라드">발라드</option> -->
<!-- 			<option value="댄스">댄스</option> -->
<!-- 			<option value="헤비 메탈">헤비 메탈</option> -->
<!-- 			<option value="랩">랩</option> -->
<!-- 		</select><br/> -->
		<input type="submit" class="btn btn-primary" value="가입하기">
	</form>	
	</div>
	
</body>
</html>