package rentalroomorservicefinder.controller;



import javax.servlet.http.HttpServletRequest;
import rentalroomorservicefinder.dto.*;
import rentalroomorservicefinder.servlet.UserLoginControllerServelt;
import rentalroomorservicefinder.dao.*;

public class PropertyController {

    public boolean addProperty(HttpServletRequest request) {
        String propertyName = request.getParameter("propertyName");
        String propertyType = request.getParameter("propertyType");
        double propertyPrice = Double.parseDouble(request.getParameter("propertyPrice"));
        String propertyDescription = request.getParameter("propertyDescription");
       
        Property property = new Property();
        property.setPropertyName(propertyName);
        property.setPropertyType(propertyType);
        property.setPropertyPrice(propertyPrice);
        property.setPropertyDescription(propertyDescription);
        property.setPhno(UserLoginControllerServelt.phno);
        PropertyDAO propertyDAO = new PropertyDAO();
        return propertyDAO.addProperty(property);
    }
}
