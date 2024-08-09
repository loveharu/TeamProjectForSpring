<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>
	요청 주소 /ex/quize3/input<br>
	사용자 입력
	
	</h1>

	<form action="/ex/quize/result" method="get">
		id: <input type="text" name="id"><br> pw: <input
			type="password" name="pw"> <input type="submit" value="전송">

	</form>
</body>
</html>
