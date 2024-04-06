<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="rentalroomorservicefinder.dto.Property"%>
<%@page import="rentalroomorservicefinder.dao.PropertyDAO"%>
<%@page import="rentalroomorservicefinder.servlet.UserLoginControllerServelt"%>
<%@ page import="java.util.List" %>


 <!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Show property</title>
<link rel="stylesheet" href="Css/showproperty.css">
<link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
/>
<script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
</head>

<body>
<jsp:include page="/head.jsp"></jsp:include>
<h2>Properties:</h2>
<%
    if (((Property)request.getAttribute("property")) != null) {
%>
    <table class="table table-striped table-info">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Type</th>
                <th scope="col">Price</th>
                <th scope="col">Description</th>
                <th scope="col">Phone No</th>
            </tr>
        </thead>
        <tbody>
         
            <tr>
                <td><%= ((Property)request.getAttribute("property")).getId() %></td>
                <td><%= ((Property)request.getAttribute("property")).getPropertyName() %></td>
                <td><%= ((Property)request.getAttribute("property")).getPropertyType() %></td>
                <td><%= ((Property)request.getAttribute("property")).getPropertyPrice() %></td>
                <td><%= ((Property)request.getAttribute("property")).getPropertyDescription() %></td>
                <td><%= ((Property)request.getAttribute("property")).getPhno() %></td>
            </tr>
           
        </tbody>
    </table>
<%
    } else {
%>
    <p>No property found for the given phone number.</p>
    <%=((Property)request.getAttribute("property")).getPhno() %>
<%
    }
%>
<div class="foot-prop"><jsp:include page="/foot.jsp"></jsp:include></div>

</body>

</html>
