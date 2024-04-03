package rentalroomorservicefinder.servlet;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rentalroomorservicefinder.controller.*;
import rentalroomorservicefinder.dto.Property;
import rentalroomorservicefinder.dto.Users;

@WebServlet("/addPropertyServlet")
public class AddPropertyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public static long phno=1l;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PropertyController propertyController = new PropertyController();
        if (propertyController.addProperty(request)) {
            
            // Handle property addition failure
        	request.setAttribute("message", "you already had property with us");
			RequestDispatcher dispatcher=request.getRequestDispatcher("success.jsp");
			
            
        } else {
        	// Property added successfully
       	 // Replace with the actual property ID
       	
        	String propertyId=Long.toString(UserLoginControllerServelt.phno);
        	request.setAttribute("propertyId", propertyId);
        	request.getRequestDispatcher("addimages.jsp").forward(request, response);
            
        }
    }
}

