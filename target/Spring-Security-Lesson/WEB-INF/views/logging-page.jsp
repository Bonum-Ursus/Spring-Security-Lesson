<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 05.03.2020
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link href="<c:url value="/resources/CSS/style.css" />" rel="stylesheet">
    <title>Logging</title>
</head>
<body>
<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">
    <h1>SigIn</h1>
    <c:if test="${param.error != null}">
        <i class="failed">Wrong username or password. Try it again.</i>
    </c:if>
    <p>
        User name: <input type="text" name="username">
    </p>
    <p>
        Password: <input type="password" name="password">
    </p>
    <input type="submit" value="SignIn">
</form:form>

</body>
</html>
