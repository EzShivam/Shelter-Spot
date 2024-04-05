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

@WebServlet("/edit")
public class EditUserControllerServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		UsersDao studentDao=new UsersDao();
		
		Users student=studentDao.getUserById(id);
		
		if(student!=null) {
			req.setAttribute("user", student);
			RequestDispatcher dispatcher=req.getRequestDispatcher("edituser.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
