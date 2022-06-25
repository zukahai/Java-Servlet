package com.hai.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import com.hai.utils.JpaUtils;

import model.User;

public class UserDao implements IUser{
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

	@Override
	public void update(User user) throws Exception {
		if (findById(user.getUsername()) == null)
			throw new Exception("Unable to change username");
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		
		try {
			entityTransaction.begin();
			entityManager.merge(user);
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
	public void deleteById(String userID) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		
		try {
			entityTransaction.begin();
			User user = entityManager.find(User.class, userID);
			
			if (user != null) {
				entityManager.remove(user);
			} else {
				throw new Exception("User can't found");
			}
			
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
	public User findById(String userID) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		User user = entityManager.find(User.class, userID);
		return user;
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		TypedQuery<User> typedQuery = entityManager.createNamedQuery("User.findAll", User.class);
		return typedQuery.getResultList();
	}

	@Override
	public List<User> findAll(int page, int pagesize) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		TypedQuery<User> typedQuery = entityManager.createNamedQuery("User.findAll", User.class);
		typedQuery.setFirstResult(page * pagesize);
		typedQuery.setMaxResults(page);
		return typedQuery.getResultList();
	}

	@Override
	public User checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		//User :Entity
		String jqpl = "select u form User u where u.username = :username and u.password = :password";
		TypedQuery<User> typedQuery = entityManager.createNamedQuery(jqpl, User.class);
		typedQuery.setParameter("username", username);
		typedQuery.setParameter("password", password);
		return typedQuery.getSingleResult();
	}

	@Override
	public List<User> findByUsername(String username) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		//User :Entity
		String jqpl = "select u form User u where u.username like :username";
		TypedQuery<User> typedQuery = entityManager.createNamedQuery(jqpl, User.class);
		typedQuery.setParameter("username", "%" + username + "%");
		return typedQuery.getResultList();
	}

	@Override
	public List<User> findByPassword(String password) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		//User :Entity
		String jqpl = "select u form User u where u.password like :password";
		TypedQuery<User> typedQuery = entityManager.createNamedQuery(jqpl, User.class);
		typedQuery.setParameter("password", "%" + password + "%");
		return typedQuery.getResultList();
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		//User :Entity
		String jqpl = "select count(u) form User u";
		Query query = entityManager.createQuery(jqpl);
		return ((Long)query.getSingleResult()).intValue();
	}
}
