<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/AddItemController" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>상품이름</td>
				<td><input type="text" name="itemName"></td>
			</tr>
			<tr>
				<td>상품이미지</td>
				<td><input type="file" name="filename"></td>
			</tr>
		</table>
		<button type="submit">상품 추가</button>
	</form>
</body>
</html>