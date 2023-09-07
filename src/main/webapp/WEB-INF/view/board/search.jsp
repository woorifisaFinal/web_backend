<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
</head>
<body>
    <h1>Search Results</h1>

    <c:if test="${not empty searchResults}">
        <table>
            <thead>
                <tr>
                    <th>No</th>
                    <th>Title</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${searchResults}" var="board">
                    <tr>
                        <td>${board.no}</td>
                        <td><a href="/board/detail?no=${board.no}">${board.title}</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
    
    <c:if test="${empty searchResults}">
        <p>No results found.</p>
    </c:if>
    
    <!-- Link to go back to the list page -->
    <a href="/board/list">Back to List</a>
</body>
</html>
