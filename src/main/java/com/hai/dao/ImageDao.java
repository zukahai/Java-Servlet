package com.hai.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import com.hai.interface_.IImage;
import com.hai.model.Image;
import com.hai.utils.JpaUtils;


public class ImageDao implements IImage{
	@Override
	public void insertImage(Image image) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		
		try {
			entityTransaction.begin();
			entityManager.persist(image);
			entityTransaction.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entityTransaction.rollback();
		} finally {
			entityManager.close();
		}
	}

	@Override
	public int count() {
		EntityManager entityManager = JpaUtils.getEntityManager();
		String jqpl = "select count(i) from Image i";
		Query query = entityManager.createQuery(jqpl);
		return ((Long)query.getSingleResult()).intValue();
	}
	
	@Override
	public int countByUsername(String username) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		String jqpl = "select count(i) from Image i where i.username = :username";
		Query query = entityManager.createQuery(jqpl);
		query.setParameter("username", username);
		return ((Long)query.getSingleResult()).intValue();
	}

	@Override
	public List<Image> findByUsername(String username) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		String jqpl = "select i from Image i where i.username = :username ORDER BY i.datetime DESC";
		TypedQuery<Image> typedQuery = entityManager.createQuery(jqpl, Image.class);
		typedQuery.setParameter("username", username);
		return typedQuery.getResultList();
	}
	
	@Override
	public List<Image> findByUsername(String username, int page, int limit) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		String jqpl = "select i from Image i where i.username = :username ORDER BY i.datetime DESC";
		TypedQuery<Image> typedQuery = entityManager.createQuery(jqpl, Image.class);
		typedQuery.setParameter("username", username);
		typedQuery.setFirstResult(page * limit);
		typedQuery.setMaxResults(limit);
		return typedQuery.getResultList();
	}

	@Override
	public String randomImageName() {
		// TODO Auto-generated method stub
		int lengthResult = 80;
		String source = "0123456789abcdefghijklmnopqrstuvwxyz";
		String ans = "";
		for (int i = 0; i < lengthResult; i++)
			ans = ans + source.charAt((int)(Math.random() * 1000000) % source.length());
		ans = ans + ".png";
		return ans;
	}

	@Override
	public Image findByURL(String URL) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		//Image :Entity
		String jqpl = "select i from Image i where i.url = :url";
		TypedQuery<Image> typedQuery = entityManager.createQuery(jqpl, Image.class);
		typedQuery.setParameter("url", URL);
		return typedQuery.getSingleResult();
	}

	@Override
	public void delete(Image image) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		
		try {
			entityTransaction.begin();
			//https://stackoverflow.com/questions/17027398/java-lang-illegalargumentexception-removing-a-detached-instance-com-test-user5
			entityManager.remove(entityManager.contains(image) ? image : entityManager.merge(image));
			entityTransaction.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entityTransaction.rollback();
		} finally {
			entityManager.close();
		}
	}

	@Override
	public int findIdInsert() {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		TypedQuery<Image> typedQuery = entityManager.createNamedQuery("Image.findAll", Image.class);
		ArrayList<Integer> arr = new ArrayList<>();
		for (Image i: typedQuery.getResultList())
			arr.add(i.getId());
		Collections.sort(arr);  
		if (arr.size() == 0)
			return 1;
		if (arr.get(0) > 1)
			return 1;
		for (int i = 1; i < arr.size(); i++)
			if (arr.get(i) - arr.get(i - 1) > 1)
				return arr.get(i - 1) + 1;
		return arr.size() + 1;
	}

	@Override
	public int NumberOfpage(int limit, String username) {
		// TODO Auto-generated method stub
		return (int) Math.ceil((float)countByUsername(username)/ limit);
	}
}
