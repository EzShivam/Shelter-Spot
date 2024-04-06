package rentalroomorservicefinder.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rentalroomorservicefinder.dao.ImageDAO;
import rentalroomorservicefinder.dto.ImageDTO;

@WebServlet("/viewpropertyimagesbyadmin")
public class ViewPropertyImagesByAdminController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long phno=Long.parseLong(req.getParameter("phno"));
		ImageDAO imageDAO=new ImageDAO();
		List<ImageDTO> dbImageDto=imageDAO.getAllImagesByPhno(phno);
		
		if(dbImageDto!=null) {
			req.setAttribute("phno", phno);
			RequestDispatcher dispatcher=req.getRequestDispatcher("userpropertyimages.jsp");
			dispatcher.forward(req, resp);
		}
			
	}
}