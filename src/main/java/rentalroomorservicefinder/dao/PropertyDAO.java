package rentalroomorservicefinder.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;



import rentalroomorservicefinder.dto.Property;
import rentalroomorservicefinder.dto.Users;





public class PropertyDAO {
	public static boolean userExists = false;
    private EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("shivam");

    public boolean addProperty(Property property) {
    	if(checkIfUserExists(property.getPhno())) {
    		
    		return true;
    	}else {
    		EntityManager entityManager = entityManagerFactory.createEntityManager();
            entityManager.getTransaction().begin();
            entityManager.persist(property);
            entityManager.getTransaction().commit();
            entityManager.close();
            return false; // Assuming successful addition
    	}
    }
    public List<Property> getAllProperties() {
    	EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query=entityManager.createQuery("select a from Property a");
		List<Property> properties=query.getResultList();
		
        return properties;
    }
    
    public Property getPropertyByPhno(long phno) {
		try {
			EntityManager entityManager=entityManagerFactory.createEntityManager();
			Property property=null;
			
			Query query=entityManager.createQuery("select s from Property s where s.phno=?1");
			query.setParameter(1, phno);
			property=(Property) query.getSingleResult();
			return property;
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		
	}
    public boolean checkIfUserExists(long phoneNumber) {
        // Create EntityManagerFactory and EntityManager
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("shivam");
        EntityManager entityManager = factory.createEntityManager();

        try {
            // Begin transaction
            entityManager.getTransaction().begin();

            // Query to check if phone number exists
            Query query=entityManager.createQuery("select s from Property s where s.phno=?1");
			query.setParameter(1, phoneNumber);
            List<Users> resultList = query.getResultList();

            // If the phone number exists in the database
            if (!resultList.isEmpty()) {
            	userExists=true;
                return true;
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

        return false;
    }
    
}
