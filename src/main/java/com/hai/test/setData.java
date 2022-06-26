package com.hai.test;

import com.hai.dao.UserDao;

import model.User;

public class setData {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		User user = new User();
		UserDao userDao = new UserDao();
		int start = 1;
		for (int i = start; i <= start + 50; i++) {
			user.setUsername("UserName" + i);
			user.setFullname("Fullname" + i);
			user.setPassword("Password" + i);
			user.setAge(i);
			userDao.insertUser(user);
		}
		System.out.println("Done");
	}

}
