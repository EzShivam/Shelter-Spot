package rentalroomorservicefinder.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

import rentalroomorservicefinder.dto.Admin;

public class AdminDao {
	public EntityManager getEntityManager() {
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("shivam");
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		return entityManager;
	}
	
	public Admin saveAdmin(Admin admin) {
		EntityManager entityManager=getEntityManager();
		EntityTransaction entityTransaction=entityManager.getTransaction();
		
		entityTransaction.begin();
		entityManager.persist(admin);
		entityTransaction.commit();
		return admin;
	}
	public Admin loginAdmin(String email) {
		try {
			EntityManager entityManager=getEntityManager();
			Query query=entityManager.createQuery("select a from Admin a where a.email=?1");
			query.setParameter(1, email);
			Admin dbadmin=(Admin) query.getSingleResult();
			
			return dbadmin;
		} catch (NoResultException nre) {
			return null;
		}
	}
	public Admin updateAdmin(Admin admin) {
		EntityManager entityManager=getEntityManager();
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.merge(admin);
		entityTransaction.commit();
		return admin;
	}
	public boolean deleteUser(int id) {
		EntityManager entityManager=getEntityManager();
		EntityTransaction entityTransaction=entityManager.getTransaction();
		Admin admin=entityManager.find(Admin.class, id);
		if(admin!=null) {
			entityTransaction.begin();
			entityManager.remove(admin);
			entityTransaction.commit();
			return true;
		}
		else {
			return false;
		}
		
	}
	public Admin getUserById(int id) {
		EntityManager entityManager=getEntityManager();
		Admin admin=entityManager.find(Admin.class, id);
		return admin;
	}
	
	public List<Admin> getAllAdmins(){
		EntityManager entityManager=getEntityManager();
		Query query=entityManager.createQuery("select a from Admin a");
		List<Admin> list=query.getResultList();
		return list;
	}


}
