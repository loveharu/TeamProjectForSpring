<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
id = ${humanDto.id} <br>
password = ${humanDto.pw }<br>
age = ${humanDto.age }<br>
name = ${humanDto.name }<br>

id = ${newHuman.id} <br>
password = ${newHuman.pw }<br>
age = ${newHuman.age }<br>
name = ${newHuman.name }<br>
</body>
</html>