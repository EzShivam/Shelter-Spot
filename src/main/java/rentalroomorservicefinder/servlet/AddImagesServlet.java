package rentalroomorservicefinder.servlet;



import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import rentalroomorservicefinder.dao.ImageDAO;
import rentalroomorservicefinder.dao.PropertyDAO;
import rentalroomorservicefinder.dto.ImageDTO;
import rentalroomorservicefinder.dto.Property;

@WebServlet("/addImagesServlet")
@MultipartConfig
public class AddImagesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long propertyId = Long.parseLong(request.getParameter("propertyId"));
        Collection<Part> parts = request.getParts();

        for (Part part : parts) {
            String fileName = extractFileName(part);
            InputStream fileContent = part.getInputStream();

            // Save the image to the database
            ImageDTO image = new ImageDTO();
            image.setPhno(propertyId);
            image.setImageName(fileName);
            image.setImageData(readImageBytes(fileContent));
            ImageDAO imageDAO = new ImageDAO();
            if (!imageDAO.addImage(image)) {
                // Handle failure to add image
                response.sendRedirect("login.jsp");
                return;
            }
        }
        
        response.sendRedirect("success.jsp");
    }

    private String extractFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        String[] items = contentDisposition.split(";");
        for (String item : items) {
            if (item.trim().startsWith("filename")) {
                return item.substring(item.indexOf("=") + 2, item.length() - 1);
            }
        }
        return "";
    }

    private byte[] readImageBytes(InputStream input) throws IOException {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        byte[] buffer = new byte[4096];
        int bytesRead;
        while ((bytesRead = input.read(buffer)) != -1) {
            output.write(buffer, 0, bytesRead);
        }
        return output.toByteArray();
    }
}
