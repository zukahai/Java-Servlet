package com.interface_;

import java.util.List;

import model.Image;
import model.User;

public interface IImage {
	public void insertImage(Image image);
	public void delete(Image image);
	public List<Image> findByUsername(String username);
	public Image findByURL(String URL);
	public String randomImageName();
	public int count();
	public int findIdInsert();
}
