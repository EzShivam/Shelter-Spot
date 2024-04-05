package rentalroomorservicefinder.servlet;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rentalroomorservicefinder.dao.UsersDao;
import rentalroomorservicefinder.dto.Users;
import rentalroomorservicefinder.dto.Users;


@WebServlet("/signup")
public class UserRegisterDetailsControllerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstName=req.getParameter("firstName");
		String lastName=req.getParameter("lastName");
		String mobile=req.getParameter("mobile");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String cnfpassword=req.getParameter("cnfpassword");
		
		Users login=new Users();
		login.setFirstnName(firstName);
		login.setLastName(lastName);
		login.setPhno(Long.parseLong(mobile));
		login.setEmail(email);
		login.setPassword(password);
		login.setcnfpassword(cnfpassword);
				
		UsersDao loginPageDao=new UsersDao();
		Users dbuser=loginPageDao.saveUsers(login);
		
		if(dbuser!=null) {
			req.setAttribute("message", "signup succesfully");
			RequestDispatcher dispatcher=req.getRequestDispatcher("login.jsp");
			dispatcher.forward(req, resp);
		}
	}

}
