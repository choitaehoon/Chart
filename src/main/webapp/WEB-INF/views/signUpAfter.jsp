<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css">

<style>
<style>
table {
	border-collapse: collapse;
}
td { padding: 5px; border: solid 1px gray; }

#abc
{
	position:absolute;
	top:130px;
	right:250px;
}
#def
{
	position:absolute;
	top:130px;
	right:350px;
}
</style>
</head>
<body>

<div class="container" id="abc">
<form action="sign" method="post">
	<input type="hidden" name="id" value="${user.id}">
	
	<h1>${user.userId}안녕하세요</h1>
	좋아 하는 음악 :
	<input type="text" name="musicName"> <br/>
	음악 장르: &nbsp;
	<select name="musicTaste">
		<option value="발라드">발라드</option>
		<option value="댄스">댄스</option>
		<option value="헤비 메탈" selected>헤비 메탈</option>
		<option value="랩">랩</option>
	</select>
	<br/>
	<input type="submit" class="btn btn-primary" value="음악취향선택">
</form>
</div>

<div>
<form action="login">
	<input type="button" value="로그아웃">
</form>
</div>

<div id="def">	
	<table class="table table-bordered">
	<tr>
		<td style="background:gray;">순위</td>
		<td style="background:gray;">노래제목</td>
	</tr>
	<c:forTokens  items="${contents}" var="list" varStatus="lll" delims="," begin="1" end="10">
		<tr>
			<td>${lll.count}</td>
			<td>${list}</td>
		</tr>
	</c:forTokens>
	</table>
</div>

</body>
</html>