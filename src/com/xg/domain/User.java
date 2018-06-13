package com.xg.domain;

/**
 * @author guozhenZhao
 * @date 2018年6月13日
 */
public class User {
	private int id;
	private String userName;
	private String passWord;
	private int role;
	private String name;

	public User(String userName, String passWord, int role, String name) {
		super();
		this.userName = userName;
		this.passWord = passWord;
		this.role = role;
		this.name = name;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

}
