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
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Home Page</title>
    <link href="<c:url value="/resources/CSS/style.css" />" rel="stylesheet">

</head>
    <body>
        <hr>
        <h1>Welcome home page</h1>
        <hr>
        <h2>User: <security:authentication property="principal.username" /></h2>
        <h2>Role(s) : <security:authentication property="principal.authorities" /></h2>
        <hr>
        <security:authorize access="hasRole('MANAGER')">
            <p>
                <a href="${pageContext.request.contextPath}/leaders"> LeaderShip Meeting</a>
            </p>
        </security:authorize>
        <security:authorize access="hasRole('ADMIN')">
            <p>
                <a href="${pageContext.request.contextPath}/admins"> For Admins</a>
            </p>
        </security:authorize>
        <hr>
    <form:form action="${pageContext.request.contextPath}/logout" method="post">
        <input class="bLogout" type="submit" value="Log out">

    </form:form>
    </body>
</html>
