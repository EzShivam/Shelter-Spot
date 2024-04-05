package rentalroomorservicefinder.servlet;

import java.io.IOException;

import javax.persistence.NoResultException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rentalroomorservicefinder.dao.AdminDao;
import rentalroomorservicefinder.dto.Admin;


@WebServlet("/adminlogin")
public class AdminLoginControllerServlet extends HttpServlet {
	public static boolean loggedIn= false;
	public static String loginusername=null;
	public static long phno=1l;
	public static String fullname="";
	public static boolean this_is_admin=false;
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		try {
			AdminDao adminDao = new AdminDao();
		    Admin admin = adminDao.loginAdmin(email);
		    if (admin != null) {
		        if (admin.getEmail().equals(email) && admin.getPassword().equals(password)) {
		            phno=admin.getPhno();
		            this_is_admin=true;
		        	HttpSession session=req.getSession();
		        	session.setAttribute("loggedInUser", admin);
		        	fullname = admin.getName();
		            String firstName = getFirstName(fullname);
		            System.out.println("First Name: " + firstName);
		            Cookie cookie = new Cookie("username", firstName);
		            
		            cookie.setMaxAge(3600); 
		            resp.addCookie(cookie);
		            resp.sendRedirect("adminhome.jsp");
		            
		        } else {
		            req.setAttribute("message", "Please login with proper credentials");
		            RequestDispatcher dispatcher = req.getRequestDispatcher("admin_login.jsp");
		            dispatcher.forward(req, resp);
		        }
		    } else {
		        req.setAttribute("message", "You're not registered. Please register here!");
		        RequestDispatcher dispatcher = req.getRequestDispatcher("admin_login.jsp");
		        dispatcher.forward(req, resp);
		        return; // Add this line
		    }
		} catch (NoResultException nre) {
		    req.setAttribute("message", "You're not registered. Please register here!");
		    RequestDispatcher dispatcher = req.getRequestDispatcher("admin_login.jsp");
		    dispatcher.forward(req, resp);
		    return; // Add this line
		} catch (Exception e) {
			System.out.println(e);
		    req.setAttribute("message", "Something is wrong! Please enter the correct credentials.");
		    RequestDispatcher dispatcher = req.getRequestDispatcher("admin_login.jsp");
		    dispatcher.forward(req, resp);
		}

	}
	 public static String getFirstName(String fullName) {
	        String[] nameParts = fullName.split(" ");
	        return nameParts[0];
	    }
}
