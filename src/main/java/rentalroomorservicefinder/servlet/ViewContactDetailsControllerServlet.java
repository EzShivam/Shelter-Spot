package rentalroomorservicefinder.servlet;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/viewContactDetails")
public class ViewContactDetailsControllerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Check if user is logged in or not
    	boolean isLoggedIn = false;
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    // Here, you may perform additional validation if needed
                    isLoggedIn = true;
                    break;
                }
            }
        }
        if(isLoggedIn) {
        	RequestDispatcher dispatcher=req.getRequestDispatcher("contactDetails.jsp");
			dispatcher.forward(req, resp);
        }
        else {
        	RequestDispatcher dispatcher=req.getRequestDispatcher("logincontact.jsp");
			dispatcher.forward(req, resp);
        }
    }
}
