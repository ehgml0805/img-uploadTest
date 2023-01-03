<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품등록</h1>
	<form enctype="multipart/form-date" method="post" action="./fileUploadAction.jsp"></form>
		<div>
			상품이름: <input type="text"  name="itemName">
		</div>
		<div>
			상품이미지: <input type="file"  name="itemFile">
		</div>
		<div>
			<button type="submit">상품등록</button>
		</div>
	
</body>
</html>