package com.hai.interface_;

import java.util.List;

import com.hai.model.User;

public interface IUser {
	public void insertUser(User user) throws Exception;
	public void update(User user) throws Exception;
	public void deleteById(String userID);
	public User findById(String userID);
	public List<User> findAll();
	public List<User> findAll(int page, int limit);
	public User checkLogin(String username, String password);
	public List<User> findByUsername(String username);
	public List<User> findByPassword(String password);
	public int count();
	public int NumberOfpage(int limit);
}