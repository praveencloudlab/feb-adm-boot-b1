package com.cts.ecart.model;

import org.springframework.stereotype.Component;

@Component
public class User {

	private int userId;
	private String firstName;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

}
