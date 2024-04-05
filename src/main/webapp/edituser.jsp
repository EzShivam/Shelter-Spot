<%@page import="rentalroomorservicefinder.dto.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Css/register.css">
    <title>Registration Form</title>
</head>

<body>
    <jsp:include page="/head.jsp"></jsp:include>
    <div class="registration-container">
        <form class="registration-form" action="userupdate">
            <h3>Update User Details</h3>
            <div class="mainInputContainer">
                <div class="leftColumn">
                <% Users user=(Users)request.getAttribute("user");%>
	                <label>ID:</label>
					<input type="number" name="id" readonly="readonly" value=<%=user.getId()%>><br>
		
                    <label for="firstName">First Name:</label>
                    <input type="text" id="firstName" name="firstName" value=<%=user.getFirstnName()%> required>

                    <label for="lastName">Last Name:</label>
                    <input type="text" id="lastName" name="lastName" value=<%=user.getLastName()%> required>

                    <label for="mobile">Mobile Number:</label>
                    <input type="tel" id="mobile" name="mobile" value=<%=user.getPhno()%> required pattern="[0-9]{10}">
                </div>
                <div class="rightColumn">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" value=<%=user.getEmail()%> required>

                    <label>Create Password</label>
                    <input type="password" id="password" name="password" value=<%=user.getPassword()%> required
                        pattern="^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+])[A-Za-z\d!@#$%^&*()_+]{8,}$">

                    <label>Confirm Password</label>
                    <input type="password" id="password" name="cnfpassword" value=<%=user.getcnfpassword()%> required
                        pattern="^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+])[A-Za-z\d!@#$%^&*()_+]{8,}$">
                </div>
            </div>


            <button type="submit">Update</button>

           </form>
    </div>
    <div class="regFoot">
        <jsp:include page="/foot.jsp"></jsp:include>
    </div>
</body>

</html>