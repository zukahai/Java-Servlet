package com.interface_;

import model.Information;

public interface IInformation {
	public Information findByUsername(String username);
	public void update(Information information) throws Exception;
	public void insertUser(Information information) throws Exception;
}
