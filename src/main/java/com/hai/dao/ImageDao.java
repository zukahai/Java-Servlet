package com.hai.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import com.hai.utils.JpaUtils;
import com.interface_.IImage;

import model.Image;


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
	public List<Image> findByUsername(String username) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		String jqpl = "select i from Image i where i.username = :username ORDER BY i.datetime DESC";
		TypedQuery<Image> typedQuery = entityManager.createQuery(jqpl, Image.class);
		typedQuery.setParameter("username", username);
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
}
