package com.xg.dao;

import com.xg.domain.User;
import com.xg.utils.Page;

public interface UserDao {
	
	public User login(String userName);

	public Long selectCountByUserName(User user);

	public void addUser(User user);

	public Page<User> getPage(int pageNo);

//	public Long register(User user);
	
}
