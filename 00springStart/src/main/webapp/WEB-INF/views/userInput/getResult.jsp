<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디: ${user.id }<br>
별명:	${user.nickName }<br>
비밀번호:${user.pw }<br>
성별:${user.gender }<br>
${user.hobbies}
<h1>선택된 취미</h1>
    <ul>
        <c:forEach items="${user.hobbies}" var="hobby">
            <li>${hobby}</li>
        </c:forEach>
    </ul>
    <br>
나이:${user.age }<br>
생일:${user.birthday}<br>
이메일:${user.email }<br>
첨부 파일:${user.file }<br>
자기소개:${user.introduce }<br>

</body>
</html>