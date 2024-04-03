
<%@page import="rentalroomorservicefinder.dto.Property"%>
<%@page import="rentalroomorservicefinder.dao.PropertyDAO"%>
<%@page import="rentalroomorservicefinder.servlet.UserLoginControllerServelt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>

<%
    long phno=UserLoginControllerServelt.phno;
    PropertyDAO propertyDAO = new PropertyDAO();
    Property property=propertyDAO.getPropertyByPhno(phno);
%>

 <!DOCTYPE html>
                        <html>

                        <head>
                            <meta charset="UTF-8">
                            <title>Show property</title>
                            <link rel="stylesheet" href="Css/showproperty.css">
                            
                        </head>

                        <body>

<h2>Properties:</h2>
<%
    if (property != null) {
%>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Price</th>
                <th>Description</th>
                <th>Phno</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= property.getId() %></td>
                <td><%= property.getPropertyName() %></td>
                <td><%= property.getPropertyType() %></td>
                <td><%= property.getPropertyPrice() %></td>
                <td><%= property.getPropertyDescription() %></td>
                <td><%= property.getPhno() %></td>
            </tr>
        </tbody>
    </table>
<%
    } else {
%>
    <p>No property found for the given phone number.</p>
    <%=phno %>
<%
    }
%>
</body>

                        </html>
