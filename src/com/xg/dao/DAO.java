package chuangxinxuetang.dao;

import java.util.List;

public interface DAO<T> {
	//插入并获取主键
	long insert(String sql, Object... args);

	//更改并返回影响的函数
	void update(String sql, Object... args);

	//查询
	T query(String sql, Object... args);

	// 根据条件返回集合
	List<T> queryForList(String sql, Object... args);

	//根据条件返回单个值ֵ
	<V> V getSingleVal(String sql, Object... args);

	// 批量操作
	void batch(String sql, Object[]... params);

}
