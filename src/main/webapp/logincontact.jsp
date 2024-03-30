<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Css/login.css">
</head>
<body>
<jsp:include page="/head.jsp"></jsp:include>
    <form action="logincontact" method="post">
        <div class="form-container">
  <h2>Login To View Contact.</h2>
<% String msg=(String)request.getAttribute("message"); %>
  
  <% if(msg!=null){ %>
  		<h2 class="errorMsg"><%=msg %></h2>
  <%} %>
  <label for="username">Username:</label>
  <input type="text" id="username" name="email" placeholder="Enter your username" required>

  <label for="password">Password:</label>
  <input type="password" id="password" name="password" placeholder="Enter your password" required>

  <button type="submit">Login</button>

  <div class="register-link">
    <p>If you are new, <a href="register.jsp">register here</a>.</p>
  </div>
</div>
        
	</form>
<div class="footInclude">
<jsp:include page="/foot.jsp"></jsp:include>
</div>
</body>
</html>