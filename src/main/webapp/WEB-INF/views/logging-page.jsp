<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 05.03.2020
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link href="<c:url value="/resources/CSS/style.css" />" rel="stylesheet" type="text/css" />
    <title>Logging</title>
</head>
<body>
<div class="container">
    <div class="innerContainer">
        <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">
            <h1>Sign In</h1>
            <c:if test="${param.error != null}">
                <i class="failed">Wrong username or password.</i>
            </c:if>

            <c:if test="${param.logout != null}">
                <i class="iLogout">You have been log out.</i>
            </c:if>

            <p>
                Username: <input class="inputForm" placeholder="Type your username here" type="text" name="username">
            </p>
            <p>
                Password: <input class="inputForm" placeholder="Type your password here" type="password" name="password">
            </p>
            <input class="bSignIn" type="submit" value="Sign In">
        </form:form>
    </div>
</div>

</body>
</html>
