package rentalroomorservicefinder.servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rentalroomorservicefinder.dao.UsersDao;
import rentalroomorservicefinder.dto.Users;

@WebServlet("/userupdate")
public class UserUpdateByAdminControllerServlet extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String firstName=req.getParameter("firstName");
		String lastName=req.getParameter("lastName");
		String mobile=req.getParameter("mobile");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String cnfpassword=req.getParameter("cnfpassword");
		
		Users user=new Users();
		user.setId(id);
		user.setFirstnName(firstName);
		user.setLastName(lastName);
		user.setPhno(Long.parseLong(mobile));
		user.setEmail(email);
		user.setPassword(password);
		user.setcnfpassword(cnfpassword);
		
		UsersDao usersDao=new UsersDao();
		Users dbStudent=usersDao.updateUser(user);
		
		if(dbStudent!=null) {
			List<Users> list=usersDao.getAllUsers();
			req.setAttribute("list", list);
			RequestDispatcher dispatcher=req.getRequestDispatcher("adminhome.jsp");
			dispatcher.forward(req, resp);
		}
		else {
			RequestDispatcher dispatcher=req.getRequestDispatcher("admin_login.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
