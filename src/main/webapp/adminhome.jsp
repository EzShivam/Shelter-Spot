<%@page import="rentalroomorservicefinder.servlet.AdminLoginControllerServlet"%>
<%@page import="java.util.List"%>
<%@page import="rentalroomorservicefinder.dto.Users"%>
<%@page import="rentalroomorservicefinder.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="Css/admin.css" />
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
   
  <div>
  <jsp:include page="/head.jsp"></jsp:include>
  </div>
    <div class="maincont">
      <div class="heading-cont">
        <div class="welcomemsg">Welcome Admin</div>
        <div class="admindetails">
          <div class="adminname">
            <img
              class="adminimg"
              src="images/logo/adminLogoWithLap.png"
              alt=""
            />
          
    		<%=AdminLoginControllerServlet.fullname %>
          </div>
          <div class="adminlogout">	<a href="adminlogout" onclick="clearCookies()">Logout</a></div>
        </div>
      </div>
      <div class="user-detailstable">
        <table id="dbtable" class="table table-striped table-info">
        <%UsersDao user=new UsersDao(); %>
        <% %>
		<%List<Users> list=user.getAllUsers(); %>
		
          <thead>
            <tr>
              <th scope="col">Id</th>
              <th scope="col">First Name</th>
              <th scope="col">Last Name</th>
              <th scope="col">Email</th>
              <th scope="col">Phone No</th>
              <th scope="col">Password</th>
              <th scope="col">Confirm Passoword</th>
              <th scope="col">View Property</th>
              <th scope="col">View Property Images</th>
              <th scope="col">Update User</th>
              <th scope="col">Remove User</th>
            </tr>
          </thead>
          <tbody>
            <% for(Users users:list){ %>
            <tr>
              <td><%=users.getId() %></td>
              <td><%=users.getFirstnName()%></td>
              <td><%=users.getLastName() %></td>
              <td><%=users.getEmail() %></td>
              <td><%=users.getPhno() %></td>
              <td><%=users.getPassword() %></td>
              <td><%=users.getcnfpassword() %></td>
              
              <td><a href="viewpropertybyadmin?phno=<%=users.getPhno()%>">View Property</a></td>
              <td><a href="viewpropertyimagesbyadmin?phno=<%=users.getPhno()%>">View Property Images</a></td>
              <td><a href="delete?id=<%=users.getId()%>">Delete</a></td>
              <td><a href="edit?id=<%=users.getId()%>">Update</a></td>
            </tr>
            <%} %>
          </tbody>
        </table>
      </div>
    </div>
    <div class="adminfoot">
    <jsp:include page="/foot.jsp"></jsp:include>
    </div>
    <script>
function clearCookies() {
    // Delete the 'username' cookie
    document.cookie = 'username=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/rentalroomorservicefinder;';
}
</script>
  </body>
</html>
