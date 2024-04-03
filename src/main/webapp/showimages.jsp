<%@page import="rentalroomorservicefinder.servlet.UserLoginControllerServelt"%>

<%@page import="rentalroomorservicefinder.servlet.AddPropertyServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="rentalroomorservicefinder.dto.ImageDTO" %>
<%@ page import="rentalroomorservicefinder.dao.ImageDAO" %>
<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Images</title>
    <link rel="stylesheet" href="Css/showimg.css">
</head>
<body>
    <h2>Images</h2>
    <div class="image-container">
        <%
            // You don't need to redeclare phno here
            ImageDAO imageDAO = new ImageDAO();
            List<ImageDTO> images = imageDAO.getAllImagesByPhno(UserLoginControllerServelt.phno);
            if (images != null && !images.isEmpty()) {
            	
                for (ImageDTO image : images) {
                	if(image.getImageName().isEmpty())
                	{
                		continue;
                	}
                	else{
                		byte[] imageData = image.getImageData();
                        if (imageData != null && imageData.length > 0) {
                            String base64Image = Base64.getEncoder().encodeToString(imageData);
            %>
            <div class="imgDiv">
                <img src="data:image/jpeg;base64,<%= base64Image %>" alt="Image">
            </div>
            <%
                        }
                    }
                	}
                    
            } else {
        %>
        <p>No images found.</p>
        <%
            }
        %>
    </div>

    
</body>
</html>
