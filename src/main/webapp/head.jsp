<%@page import="rentalroomorservicefinder.servlet.AdminLoginControllerServlet"%>
<%@page import="rentalroomorservicefinder.servlet.ViewNumberLoginControllerServlet"%>
<%@page import="rentalroomorservicefinder.servlet.UserLogoutControllerServlet"%>
<%@page import="rentalroomorservicefinder.servlet.UserLoginControllerServelt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="Css/head.css" rel="stylesheet" type="text/css">
<link href="Css/head2.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css">
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
 <%		String username=null;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("username".equals(cookie.getName())) {
                     username = cookie.getValue();
                }
            }
        } 
    %>
<% String us_name=UserLoginControllerServelt.loginusername; %>
<div class="topnav" id="topNavBar">
  <a class="active" href="home.jsp">HOME</a>
  <a class="activeRoom" href="room.jsp">ROOMS</a>
  <a  class="activeServices" href="services.jsp">SERVICES</a>
  <a class="activeContact" href="contactUs.jsp">CONTACT US</a>
  <a class="activeAboutUs"href="aboutUs.jsp">ABOUT US</a>
  <a class="activeRegister" href="register.jsp">LOGIN/REGISTER</a>
  <div class="user-login-det"><% if(username!=null){ %>
  <%if (UserLoginControllerServelt.this_is_user || ViewNumberLoginControllerServlet.view_user_login) {%>
    		<a class="usernamehref" href="userdetails.jsp"><i id="usericon" class="fa fa-solid fa-user"></i> <i class="active-username"><%=username %></i> </a>
 
  <%}if(AdminLoginControllerServlet.this_is_admin){ %>
  
  		  		<a class="usernamehref" href="adminhome.jsp"> <img id="adminlogo" class="adminimg" src="images/logo/adminLogoWithLap.png" alt=""/> <i class="active-username"><%=username %></i> </a>
  		
  <%} %>
  <%} %></div>
</div>

</body>
</html>
