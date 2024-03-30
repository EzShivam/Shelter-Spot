<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Details</title>
</head>
<body>
<jsp:include page="/head.jsp"></jsp:include>
    <h1>Welcome, User!</h1>
        <p>You are logged in.</p>
         <h2>Contact Details</h2>
    <!-- Place your contact details display logic here -->
    <p>Name: John Doe</p>
    <p>Email: john@example.com</p>
    <p>Phone: 123-456-7890</p>
<jsp:include page="/foot.jsp"></jsp:include>
</body>
</html>
