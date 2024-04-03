package rentalroomorservicefinder.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import rentalroomorservicefinder.dto.*;

public class ImageDAO {
    private EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("shivam");

    public boolean addImage(ImageDTO image) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(image);
            entityManager.getTransaction().commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            entityManager.close();
        }
    }
    public List<ImageDTO> getAllImagesByPhno(long phno) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        List<ImageDTO> images = null;

        try {
            
            Query query=entityManager.createQuery("select s from ImageDTO s where s.phno=?1");
			query.setParameter(1, phno);
			images=query.getResultList();
        } catch (Exception e) {
            if (entityManager.getTransaction().isActive()) {
                entityManager.getTransaction().rollback();
            }
            e.printStackTrace(); // Handle exception appropriately
        } finally {
            entityManager.close();
        }

        return images;
    }
}
