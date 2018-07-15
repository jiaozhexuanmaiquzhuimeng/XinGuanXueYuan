package com.xg.dao;

import java.util.List;

import com.xg.domain.User;
import com.xg.utils.Page;

public interface UserDao {
	
	public User login(String userName);

	public Long selectCountByUserName(User user);

	public void addUser(User user);

	public Page<User> getPage(int pageNo);

	public void deleteUserById(User user);

	public List<User> selectUser();

	public List<User> selectUserById(int id);

	public void updateUserById(User user);

//	public Long register(User user);
	
}
