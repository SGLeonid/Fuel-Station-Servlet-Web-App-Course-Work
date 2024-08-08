<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/style.css">
    <title>Insert title here</title>
</head>
<body>
<div class="login_form">
    <h2>Sign in</h2>
    <c:if test="${not empty sessionScope.error}">
        <p>Authorization failed. Wrong username or password</p>
    </c:if>
    <form action="AzsServlet" method="post">
        <div class="text_field">
            Username<br><input type="text" name="username" required><br>
        </div>
        <div class="text_field">
            Password<br><input type="password" name="password" required><br>
        </div>
        <input type="hidden" name="signin" value="true">
        <input type="submit" value="Sign in">
    </form>
</div>
</body>
</html>