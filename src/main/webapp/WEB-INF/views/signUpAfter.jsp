<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css">

<style>
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
	
	<table>
		<tr>
			<td>${contents}</td>
		</tr>
	
	</table>
</div>


</body>
</html>