<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/style.css">
</head>
<body>
<div class="menu_form">
    <h2>Fuel Station Main menu</h2>
    <form action="AzsServlet" method="get">
        <input type="hidden" name="all_users" value="true">
        <input type="submit" value="Users">
    </form>
    <form action="AzsServlet" method="get">
        <input type="hidden" name="all_fuels" value="true">
        <input type="submit" value="Fuels">
    </form>
    <form action="AzsServlet" method="get">
        <input type="hidden" name="all_purchases" value="true">
        <input type="submit" value="Purchases">
    </form>
</div>
</body>
</html>