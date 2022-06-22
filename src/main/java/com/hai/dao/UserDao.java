package com.hai.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.hai.utils.JpaUtils;

import model.User;

public class UserDao {
	public void insertUser(User user) {
		EntityManager entityManager = JpaUtils.getEntityManager();
		
		EntityTransaction entityTransaction = entityManager.getTransaction();
		
		try {
			entityTransaction.begin();
			entityManager.persist(user);
			entityTransaction.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entityTransaction.rollback();
		} finally {
			entityManager.close();
		}
	}
}
