package com.xg.service;


import com.xg.dao.UserDao;
import com.xg.daoImpl.UserDaoImpl;
import com.xg.domain.User;
import com.xg.utils.Page;

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

	public void addUser(User user) {
		// TODO Auto-generated method stub
		userDao.addUser(user);
	}

	public Page<User> getPage(int pageNo) {
		// TODO Auto-generated method stub
		return userDao.getPage(pageNo);
	}

//	public Long register(User user) {
//		Long val = userDao.register(user);
//		return val;
//	}

}
