<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Edit content</title>
<style type="text/css">
textarea {
	width: 100%;
}

input[type=text] {
	width: 100%;
	height: 30px;
}

input[type=submit] {
	width: 100px;
	height: 30px;
	border-radius: 5px;
	background: green;
	color: white;
}
</style>
</head>
<body>
	<form action="happy" method="post">
		<input type="hidden" value="${requestScope.id }" name="id">
		Nội dung tin:<br />
		<textarea rows="10" cols="10" name="content"></textarea>
		Font size: <select name="font_size">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4" selected="selected">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
		</select>
		<br /> <br />Link nhạc nền:<br /> 
		<input type="text" name="ms_link"> <br /> <br /> 
		<input type="submit" value="Commit">
	</form>
</body>
</html>