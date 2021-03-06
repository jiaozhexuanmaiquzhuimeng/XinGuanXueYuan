package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import javax.jws.soap.SOAPBinding.Use;

import com.xg.dao.UserDao;
import com.xg.domain.User;
import com.xg.utils.Page;

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

	@Override
	public Page<User> getPage(int pageNo) {
		Page<User> page = new Page<>(pageNo);
		page.setTotalItemNumber(getTotalToolNumber());
		page.setList(getPageList(pageNo, page.getPageSize()));
		
		return page;
	}

	private List<User> getPageList(int pageNo, int pageSize) {
		String sql = "SELECT id, username, name from td_user order by id desc limit ?,?";
		List<User> users = new ArrayList<User>();
		
		users = queryForList(sql, (pageNo - 1) * pageSize, pageSize);
		return users;
	}

	private long getTotalToolNumber() {
		String sql = "select count(id) from td_user";
		return getSingleVal(sql);
	}

	@Override
	public void deleteUserById(User user) {
		// TODO Auto-generated method stub
		String sql = "delete from td_user where id = ?";
		update(sql, user.getId());
	}

	@Override
	public List<User> selectUser() {
		List<User> users = new ArrayList<User>();
		String sql = "select * from td_user";
		users = queryForList(sql);
		return users;
	}

	@Override
	public List<User> selectUserById(int id) {
		List<User> users = new ArrayList<>();
		String sql = "select * from td_user where id = ?";
		users = queryForList(sql, id);
		return users;
	}

	@Override
	public void updateUserById(User user) {
		String sql = "update td_user set username = ?, name=?, `password`=? where id = ?";
		update(sql, user.getUserName(), user.getName(), user.getPassWord(), user.getId());
	}

//	@Override
//	public Long register(User user) {
//		String sql = "insert into td_user(username, password, email, name) values(?,?,?,?)";
//		insert(sql, user.getUserName(), user.getPassWord(), user.getEmail(), user.getName());
//		return null;
//	}

}
