<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEnctype</title>
</head>
<body>
	<!-- action으로 문자열을 넘김 -->
	<form action="./action.jsp" 
		enctype="application/x-www-form-urlencoded" method="post"> <!-- get/post -->
		<input type="text" name="urlId">
		<input type="file" name="urlFile">
		<button type="submit">application/x-www-form-urlencoded</button>
	</form>
	
	<br>
	
	<!-- action으로 폼전체를 한 묶음으로 스트림(기계어,이진수)형태로 넘김 -->
	<form action="./action.jsp"
		 enctype="multipart/form-data" method="post"> <!-- post -->
		<input type="text" name="multiId">
		<input type="file" name="mulitiFile">
		<button type="submit">multipart/form-data</button>
	</form>
</body>
</html>
