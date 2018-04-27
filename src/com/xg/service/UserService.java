package com.xg.service;


import com.xg.dao.UserDao;
import com.xg.daoImpl.UserDaoImpl;
import com.xg.domain.User;

public class UserService {
	
	UserDao userDao = new UserDaoImpl();
	
	public User login(String userName) {
		User user = userDao.login(userName);
		return user;
	}

	public Long selectCountByUserName(User user) {
		Long val = userDao.selectCountByUserName(user);
		return val;
	}

	public Long register(User user) {
		Long val = userDao.register(user);
		return val;
	}

}
