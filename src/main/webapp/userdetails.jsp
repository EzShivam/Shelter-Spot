<%@page import="rentalroomorservicefinder.servlet.UserLoginControllerServelt"%>
<%@page import="rentalroomorservicefinder.dao.PropertyDAO"%>
<%@ page import="rentalroomorservicefinder.dto.Users" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Details</title>
   <link rel="stylesheet" href="Css/userdetails.css">
</head>
<body>
<jsp:include page="/head.jsp"></jsp:include>
 <% if (session.getAttribute("loggedInUser") == null) {
        response.sendRedirect("login.jsp");
    } %>
    <div class="main">
    <div class="container">
        <h2>User Details</h2>
        <form>
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" value="<%= ((Users) session.getAttribute("loggedInUser")).getFirstnName() %>" disabled>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" value="<%= ((Users)session.getAttribute("loggedInUser")).getLastName() %>" disabled>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" id="email" value="<%= ((Users) session.getAttribute("loggedInUser")).getEmail() %>" disabled>
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone Number:</label>
                <input type="tel" id="phoneNumber" value="<%= ((Users) session.getAttribute("loggedInUser")).getPhno() %>" disabled>
            </div>
            <!-- Add other user details fields here -->
            <input type="submit" value="Edit Details">
           	<a href="logout" onclick="clearCookies()">Logout</a>
        </form>
        <div>
        <%PropertyDAO propertyDAO=new PropertyDAO();%>
	  
	  <% if (propertyDAO.checkIfUserExists(UserLoginControllerServelt.phno)){ %>
	  <p>View Your property<a href="success.jsp">View Property</a>.</p>
	  <%} else{%>
	    <p>add property <a href="addproperty.jsp">add property here</a>.</p>
    	<%} %>
        </div>
    </div>
    </div>
<div class="foot-prop"><jsp:include page="/foot.jsp"></jsp:include></div>
<script>
function clearCookies() {
    // Delete the 'username' cookie
    document.cookie = 'username=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/rentalroomorservicefinder;';
}
</script>
</body>
</html>
