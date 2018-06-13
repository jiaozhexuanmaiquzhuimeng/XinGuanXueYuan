package com.xg.daoImpl;

import com.xg.dao.UserDao;
import com.xg.domain.User;

public class UserDaoImpl extends BaseDAO<User> implements UserDao {

	@Override
	public User login(String userName) {
		String sql = "SELECT * FROM td_user WHERE username = ?";
		User user = query(sql, userName);
		return user;
	}

	@Override
	public Long selectCountByUserName(User user) {
		String sql = "select count(*) from td_user where username = ?";
		Long val = getSingleVal(sql, user.getUserName());
		return val;
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		String sql = "insert into td_user(username, `password`, role, name) values(?,?,?,?)";
		insert(sql, user.getUserName(), user.getPassWord(), user.getRole(), user.getName());
	}

//	@Override
//	public Long register(User user) {
//		String sql = "insert into td_user(username, password, email, name) values(?,?,?,?)";
//		insert(sql, user.getUserName(), user.getPassWord(), user.getEmail(), user.getName());
//		return null;
//	}

}
