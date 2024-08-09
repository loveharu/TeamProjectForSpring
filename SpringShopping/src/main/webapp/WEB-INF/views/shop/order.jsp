<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 내역</title>
<style>
    /* 주술회전 테마 색상 */
    :root {
        --color-red: #D32F2F;
        --color-orange: #FF5722;
        --color-yellow: #FFC107;
        --color-green: #4CAF50;
        --color-blue: #2196F3;
        --color-purple: #9C27B0;
    }

    body {
        background-color: #F5F5F5; /* 전체 배경색 */
        font-family: 'Noto Serif KR', serif; /* 한글 폰트 */
        color: #333; /* 기본 텍스트 색상 */
        margin: 0;
        padding: 0;
    }

    h1 {
        text-align: center;
        margin-top: 20px;
        color: var(--color-purple); /* 제목 색상 */
    }

    form {
        margin: 20px auto;
        text-align: center;
    }

    form input[type="text"], form input[type="password"], form input[type="submit"] {
        padding: 10px;
        margin: 5px;
    }

    table {
        width: 80%;
        margin: 20px auto;
        background-color: #FFF; /* 테이블 배경색 */
        border-collapse: collapse; /* 테이블 경계선 설정 */
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
    }

    th, td {
        padding: 12px 15px;
        text-align: center;
        border: 1px solid #ddd; /* 셀 테두리 */
    }

    th {
        background-color: var(--color-purple); /* 헤더 배경색 */
        color: #FFF; /* 헤더 텍스트 색상 */
    }

    tr:nth-child(even) {
        background-color: #f2f2f2; /* 짝수 행 배경색 */
    }

    tr:hover {
        background-color: #ddd; /* 호버 효과 배경색 */
    }

</style>
</head>
<body>
    <h1>주문 내역</h1>


    <form action="/jdbc04/shop/selectDB.shop" method="get">
        아이디: <input type="text" name="pNum"><br>
        주문 번호: <input type="password" name="orderPw"><br>
        <input type="submit" value="조회"><br>
    </form>

    <table>
        <tr>
            <th>주문번호</th>
            <th>상품</th>
            <th>가격</th>
            <th>수량</th>
            <th>소계</th>
            <th>비고</th>
        </tr>
        <!-- 여기에 주문 내역을 동적으로 추가하거나 JSP 코드를 추가할 수 있습니다 -->
    </table>
</body>
</html>
