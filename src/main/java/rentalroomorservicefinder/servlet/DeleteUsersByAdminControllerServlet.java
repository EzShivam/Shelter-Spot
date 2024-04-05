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

@WebServlet("/delete")
public class DeleteUsersByAdminControllerServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		UsersDao studentDao=new UsersDao();
		boolean b=studentDao.deleteUser(id);
		
		if(b) {
			List<Users> list=studentDao.getAllUsers();
			req.setAttribute("list", list);
			RequestDispatcher dispatcher=req.getRequestDispatcher("adminhome.jsp");
			dispatcher.forward(req, resp);
		}
	}
}