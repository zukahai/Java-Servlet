package com.hai.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the information database table.
 * 
 */
@Entity
@NamedQuery(name="Information.findAll", query="SELECT i FROM Information i")
public class Information implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String username;

	private String email;

	private String urlavata;

	public Information() {
		super();
		this.username = "";
		this.email = "";
		this.urlavata = "avata.png";
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUrlavata() {
		return this.urlavata;
	}

	public void setUrlavata(String urlavata) {
		this.urlavata = urlavata;
	}

	@Override
	public String toString() {
		return "Information [username=" + username + ", email=" + email + ", urlavata=" + urlavata + "]";
	}
	
}