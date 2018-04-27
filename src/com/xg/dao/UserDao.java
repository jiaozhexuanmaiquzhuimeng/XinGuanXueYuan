package com.xg.dao;

import com.xg.domain.User;

public interface UserDao {
	
	public User login(String userName);

	public Long selectCountByUserName(User user);

	public Long register(User user);
	
}
