<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 06.03.2020
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="<c:url value="/resources/CSS/style.css" />" rel="stylesheet" type="text/css" />
    <title>Access denied page</title>
</head>
<body>
    <hr>
        <h2>Access denied</h2>
    <hr>
    <a href="${pageContext.request.contextPath}/">Back to Home page</a>
</body>
</html>
