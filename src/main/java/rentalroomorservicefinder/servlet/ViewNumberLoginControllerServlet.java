package rentalroomorservicefinder.servlet;



import java.io.IOException;
import java.util.List;

import javax.persistence.NoResultException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rentalroomorservicefinder.dao.UsersDao;
import rentalroomorservicefinder.dto.Users;


@WebServlet("/logincontact")
public class ViewNumberLoginControllerServlet extends HttpServlet {
	public static boolean loggedIn= false;
	public static String loginusername=null;
	public static boolean view_user_login=false;
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		
		
		try {
		    UsersDao userDao = new UsersDao();
		    Users user = userDao.loginUser(email);
		    if (user != null) {
		        if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
		        	view_user_login=true;
		        	HttpSession session=req.getSession();
		        	session.setAttribute("loggedInUser", user);
		        	Cookie cookie = new Cookie("username", user.getFirstnName());
		            cookie.setMaxAge(3600); 
		            resp.addCookie(cookie);
		            resp.sendRedirect("contactDetails.jsp");
		        } else {
		            req.setAttribute("message", "Please login with proper credentials");
		            RequestDispatcher dispatcher = req.getRequestDispatcher("logincontact.jsp");
		            dispatcher.forward(req, resp);
		        }
		    } else {
		        req.setAttribute("message", "You're not registered. Please register here!");
		        RequestDispatcher dispatcher = req.getRequestDispatcher("logincontact.jsp");
		        dispatcher.forward(req, resp);
		        return; // Add this line
		    }
		} catch (NoResultException nre) {
		    req.setAttribute("message", "You're not registered. Please register here!");
		    RequestDispatcher dispatcher = req.getRequestDispatcher("logincontact.jsp");
		    dispatcher.forward(req, resp);
		    return; // Add this line
		} catch (Exception e) {
		    req.setAttribute("message", "Something is wrong! Please enter the correct credentials.");
		    RequestDispatcher dispatcher = req.getRequestDispatcher("logincontact.jsp");
		    dispatcher.forward(req, resp);
		}

	}


}
