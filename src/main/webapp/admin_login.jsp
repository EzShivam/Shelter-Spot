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
    <form action="adminlogin" method="post">
        <div class="form-container">
  <h2>Login As Admin </h2>
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
    <!-- <p>If you are new, <a href="admin_reg.jsp">register here</a>.</p>
  --><p>If you are user, <a href="login.jsp">login here</a>.</p>
 
   </div>
</div>
        
	</form>
<div class="footInclude">
<jsp:include page="/foot.jsp"></jsp:include>
</div>
<script>
function refreshPage() {
    window.location.reload();
}
</script>


</body>
</html>