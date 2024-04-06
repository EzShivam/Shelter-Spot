package rentalroomorservicefinder.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rentalroomorservicefinder.dao.PropertyDAO;
import rentalroomorservicefinder.dao.UsersDao;
import rentalroomorservicefinder.dto.Property;
import rentalroomorservicefinder.dto.Users;

@WebServlet("/viewpropertybyadmin")
public class ViewPropertyByAdminServletController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long phno=Long.parseLong(req.getParameter("phno"));
		
		PropertyDAO propertyDAO=new PropertyDAO();
		Property dbProperty= propertyDAO.getPropertyByPhno(phno);
		
		if(dbProperty!=null) {
			
			req.setAttribute("property", dbProperty);
			RequestDispatcher dispatcher=req.getRequestDispatcher("userspropertydetails.jsp");
			dispatcher.forward(req, resp);
		}
	}
}