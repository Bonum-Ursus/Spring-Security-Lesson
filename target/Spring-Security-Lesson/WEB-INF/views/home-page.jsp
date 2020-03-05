<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 05.03.2020
  Time: 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Home Page</title>
    <link href="<c:url value="/resources/CSS/style.css" />" rel="stylesheet">

</head>
    <body>
        <h1>Welcome home page</h1>
    <form:form action="${pageContext.request.contextPath}/logout" method="post">
        <input class="bLogout" type="submit" value="Log out">

    </form:form>
    </body>
</html>
