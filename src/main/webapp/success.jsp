<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success Page</title>
    <link rel="stylesheet" href="Css/showproperty.css">
                            
     <link rel="stylesheet" href="Css/showimages.css">
</head>
<body>
	<% String msg=(String)request.getAttribute("message"); %>
    <% if(msg!=null){ %>
  		<h2><%=msg %></h2>
  <%} %>
    <h1>Success Page</h1>

    <%@ include file="showproperty.jsp" %>
    <%@ include file="showimages.jsp" %>
</body>
</html>
