<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	삽입 화면
	<h1>Customer Input Form</h1>
	<form action="/jdbc04/customer/insertDB.customer" method="get">
		<!--  <label for="id">Customer ID:</label><br>
        <input type="number" id="id" name="id" required><br><br> -->

		<label for="name">Customer Name:</label><br> <input type="text"
			id="name" name="name" maxlength="30" required><br>
		<br> <label for="height">Height (in cm):</label><br> <input
			type="number" id="height" name="height" step="0.01" required><br>
		<br> <label for="birthday">Birthday:</label><br> <input
			type="datetime-local" id="birthday" name="birthday" required><br>
		<br> <input type="submit" value="Submit">
	</form>
</body>
</html>