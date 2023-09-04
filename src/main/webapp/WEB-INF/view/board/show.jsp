<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Board</title>
</head>
<body>
    <h1>Show Board</h1>

    <c:if test="${not empty board}">
        <table>
            <tr>
                <th>게시물 번호</th>
                <th>제목</th>
            </tr>
            <tr>
                <td>${board.no}</td>
                <td>${board.title}</td>
           	</tr>
           	<tr>
           		<th>내용</th>
           	</tr>
           	<tr>
                <td>${board.content}</td>
            </tr>
        </table>
    </c:if>

    <c:if test="${empty board}">
        <p>게시물을 찾을 수 없습니다.</p>
    </c:if>

    <a href="/board/list">게시물 목록으로 돌아가기</a>
</body>
</html>
