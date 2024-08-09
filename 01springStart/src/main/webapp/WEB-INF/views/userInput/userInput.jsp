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
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action = "/ex/userInput/getResult" method = "get">
        <label for="id">이름 : </label>
        <input type="text" name="id" id="id" size="20" placeholder="이름을 입력해주세요."><br>
        <label for="nickName">별명 : </label>
        <input type="text" name="nickName" id="nickName" size="20" placeholder="별명을 입력해주세요."><br>
        <label for="ps">비밀번호 : </label>
        <input type="password" name="pw" id="pw" size="20" placeholder="비밀번호를 입력해주세요."><br>
        <label>성별</label>
        <input type="radio" name="gender" value="man" checked>
        <label for="man">남</label>
        <input type="radio" name="gender" value="woman">
        <label for="woman">여</label><br>
        <label>관심분야 : </label>
        <input type="checkbox" name="hobbies" value="movie">
        <label for="movie">영화</label>
        <input type="checkbox" name="hobbies" value="read">
        <label for="read">독서</label>
        <input type="checkbox" name="hobbies" value="sports">
        <label for="sports">스포츠</label><br>
        <label for="age">나이 : </label>
        <input type="number" name="age" id="age" size="20" placeholder="나이를 입력해주세요."><br>
        <label for="birthday">생일</label>
        <input type="date" name="birthday" id="birthday"><br>
        <label for="email">이메일 : </label>
        <input type="email" name="email" id="email" placeholder="이메일을 입력해주세요."><br>
        <label for="f1">파일 첨부</label>
        <input type="file" name="f1" id="f1"><br>
        <label for="introduce">자기소개 : </label>
        <textarea name="introduce" id="introduce" rows="10" cols="50" placeholder="200자 이내로 자기 소개를 작성해 주세요."></textarea><br>
        <select name="fsite" id="fsite">
            <option value="1">패밀리사이트</option>
        </select><br><br>
        <input type="submit" value="전송">
        <input type="reset" value="다시 쓰기">
    </form>
     <form action = "/ex/userInput/postResult" method = "post">
        <label for="id">이름 : </label>
        <input type="text" name="id1" id="id1" size="20" placeholder="이름을 입력해주세요."><br>
        <label for="nickName">별명 : </label>
        <input type="text" name="nickName" id="nickName" size="20" placeholder="별명을 입력해주세요."><br>
        <label for="pw">비밀번호 : </label>
        <input type="password" name="pw" id="pw" size="20" placeholder="비밀번호를 입력해주세요."><br>
        <label>성별</label>
        <input type="radio" name="gender" value="man" checked>
        <label for="man">남</label>
        <input type="radio" name="gender" value="woman">
        <label for="woman">여</label><br>
        <label>관심분야 : </label>
        <input type="checkbox" name="hobbies" value="movie">
        <label for="movie">영화</label>
        <input type="checkbox" name="hobbies" value="read">
        <label for="read">독서</label>
        <input type="checkbox" name="hobbies" value="sports">
        <label for="sports">스포츠</label><br>
        <label for="age">나이 : </label>
        <input type="number" name="age" id="age" size="20" placeholder="나이를 입력해주세요."><br>
        <label for="birthday">생일</label>
        <input type="date" name="birthday" id="birthday"><br>
        <label for="email">이메일 : </label>
        <input type="email" name="email" id="email" placeholder="이메일을 입력해주세요."><br>
        <label for="f1">파일 첨부</label>
        <input type="file" name="f1" id="f1"><br>
        <label for="introduce">자기소개 : </label>
        <textarea name="introduce" id="introduce" rows="10" cols="50" placeholder="200자 이내로 자기 소개를 작성해 주세요."></textarea><br>
        <select name="fsite" id="fsite">
            <option value="1">패밀리사이트</option>
        </select><br><br>
        <input type="submit" value="전송">
        <input type="reset" value="다시 쓰기">
    </form>
</body>
</html>
</body>
</html>