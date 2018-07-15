package com.xg.service;


import java.util.ArrayList;
import java.util.List;

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
		userDao.addUser(user);
	}

	public Page<User> getPage(int pageNo) {
		return userDao.getPage(pageNo);
	}

	public void deleteUserById(User user) {
		userDao.deleteUserById(user);
	}

	public List<User> selectUser() {
		return userDao.selectUser();
	}
	
	public List<User> selectUserById(int id){
		return userDao.selectUserById(id);
	}

	public void updateUserById(User user) {
		userDao.updateUserById(user);
	}

//	public Long register(User user) {
//		Long val = userDao.register(user);
//		return val;
//	}

}
