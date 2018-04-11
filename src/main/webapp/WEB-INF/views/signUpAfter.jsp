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
</style>
</head>
<body>

<div class="container" id="abc">
	<h1>${user.userId}안녕하세요</h1>
	내가 관심있는 장르: &nbsp;
	<select name="taste">
		<option value="발라드">발라드</option>
		<option value="댄스">댄스</option>
		<option value="헤비 메탈" selected>헤비 메탈</option>
		<option value="랩">랩</option>
	</select>
	
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