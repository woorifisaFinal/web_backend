<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시물 목록</title>
</head>
<body>
    <h1>게시물 목록</h1>

    <table border="1">
        <thead>
            <tr>
                <th>게시물 번호</th>
                <th>제목</th>
                <th>작성자</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${pageInfo.content}" var="board">
                <tr>
                    <td><a href="/board/show?no=${board.no}">${board.no}</a></td>
                    <td>${board.title}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div>
        <c:if test="${pageInfo.totalPages > 1}">
            <c:url var="prevUrl" value="/board/list">
                <c:param name="page" value="${pageInfo.number}" />
            </c:url>
            <c:url var="nextUrl" value="/board/list">
                <c:param name="page" value="${pageInfo.number + 2}" />
            </c:url>
        </c:if>
    </div>
</body>
</html>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
>>>>>>> 94ad6dce03095de5d3a463aafacb1624be83c38d
