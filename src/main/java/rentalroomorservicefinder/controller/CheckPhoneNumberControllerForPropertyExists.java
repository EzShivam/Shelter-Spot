package rentalroomorservicefinder.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rentalroomorservicefinder.dto.Users;

@WebServlet("/CheckPhoneNumber")
public class CheckPhoneNumberControllerForPropertyExists extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the phone number from the request parameter
        String phoneNumber = request.getParameter("phoneNumber");

        // Create EntityManagerFactory and EntityManager
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("shivam");
        EntityManager entityManager = factory.createEntityManager();

        boolean userExists = false;

        try {
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");

            // Begin transaction
            entityManager.getTransaction().begin();

            // Query to check if phone number exists
            Query query = entityManager.createQuery("FROM User WHERE phoneNumber = :phoneNumber");
            query.setParameter("phoneNumber", phoneNumber);
            List<Users> resultList = query.getResultList();

            // If the phone number exists in the database
            if (!resultList.isEmpty()) {
                userExists = true;
            }

            // Commit the transaction
            entityManager.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            entityManager.getTransaction().rollback();
        } finally {
            // Close EntityManager and EntityManagerFactory
            entityManager.close();
            factory.close();
        }

        // Return the result as JSON
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.println("{\"userExists\": " + userExists + "}");
    }
}

