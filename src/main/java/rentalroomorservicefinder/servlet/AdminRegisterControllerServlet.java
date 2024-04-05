package rentalroomorservicefinder.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rentalroomorservicefinder.dao.AdminDao;
import rentalroomorservicefinder.dto.Admin;

@WebServlet("/adminregister")
public class AdminRegisterControllerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstName=req.getParameter("name");
		String email=req.getParameter("email");
		String mobile=req.getParameter("mobile");
		String password=req.getParameter("password");
		String cnfpassword=req.getParameter("cnfpassword");
		
		Admin admin=new Admin();
		admin.setName(firstName);
		admin.setPhno(Long.parseLong(mobile));
		admin.setEmail(email);
		admin.setPassword(password);
		admin.setCnfpassword(cnfpassword);
				
		AdminDao adminDao=new AdminDao();
		Admin dbadmin=adminDao.saveAdmin(admin);
		
		if(dbadmin!=null) {
			req.setAttribute("message", "signup succesfully");
			RequestDispatcher dispatcher=req.getRequestDispatcher("admin_login.jsp");
			dispatcher.forward(req, resp);
		}
	}

}
