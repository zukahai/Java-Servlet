package com.hai.cookie;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SolveCookie {
	HttpServletRequest request;
	HttpServletResponse response;
	public SolveCookie(HttpServletRequest request, HttpServletResponse response) {
		this.request = request;
		this.response = response;
	}
	
	public void setCookie(String name, String value) {
		Cookie cookie = new Cookie(name, value);
		cookie.setMaxAge(60 * 60 * 24);
		cookie.setPath("/");
		this.response.addCookie(cookie);
	}
	
	public String getCookieByName(String name) {
		Cookie[] cookies = this.request.getCookies();
		
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals(name))
					return c.getValue();
			}
		}
		return null;
	}
}
