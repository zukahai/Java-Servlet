package com.hai.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.hai.utils.JpaUtils;
import com.interface_.IInformation;

import model.Information;

public class InformationDao implements IInformation{
	
	@Override
	public void insertUser(Information information) throws Exception {
		// TODO Auto-generated method stub
		if (findByUsername(information.getUsername()) != null)
			throw new Exception("Username already exists");
		
		EntityManager entityManager = JpaUtils.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		
		try {
			entityTransaction.begin();
			entityManager.persist(information);
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
	public Information findByUsername(String username) {
		// TODO Auto-generated method stub
		EntityManager entityManager = JpaUtils.getEntityManager();
		Information information = entityManager.find(Information.class, username);
		return information;
	}

	@Override
	public void update(Information information) throws Exception {
		// TODO Auto-generated method stub
		if (findByUsername(information.getUsername()) == null) {
			insertUser(information);
			return;
		}
		EntityManager entityManager = JpaUtils.getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		
		try {
			entityTransaction.begin();
			entityManager.merge(information);
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
