package com.interface_;

import java.util.List;

import model.Image;
import model.User;

public interface IImage {
	public void insertImage(Image image);
	public List<Image> findByUsername(String username);
	public String randomImageName();
	public int count();
}
