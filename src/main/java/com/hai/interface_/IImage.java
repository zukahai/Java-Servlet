package com.hai.interface_;

import java.util.List;

import com.hai.model.Image;
import com.hai.model.User;

public interface IImage {
	public void insertImage(Image image);
	public void delete(Image image);
	public List<Image> findByUsername(String username);
	public List<Image> findByUsername(String username, int page, int limit);
	public Image findByURL(String URL);
	public String randomImageName();
	public int count();
	public int countByUsername(String username);
	public int findIdInsert();
	public int NumberOfpage(int limit, String username);
}
