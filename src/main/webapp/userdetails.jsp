<%@ page import="rentalroomorservicefinder.dto.Users" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="password"], input[type="tel"] {
            width: 100%;
            padding: 10px;
            border-radius: 3px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<jsp:include page="/head.jsp"></jsp:include>
 <% if (session.getAttribute("loggedInUser") == null) {
        response.sendRedirect("login.jsp");
    } %>
    <div class="container">
        <h2>User Details</h2>
        <form>
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" value="<%= ((Users) session.getAttribute("loggedInUser")).getFirstnName() %>" disabled>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" value="<%= ((Users) session.getAttribute("loggedInUser")).getLastName() %>" disabled>
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
           	<a href="logoutjsp" onclick="clearCookies()">Logout</a>
        </form>
    </div>
<div><jsp:include page="/foot.jsp"></jsp:include></div>
<script>
function clearCookies() {
    // Delete the 'username' cookie
    document.cookie = 'username=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/rentalroomorservicefinder;';
}
</script>
</body>
</html>
