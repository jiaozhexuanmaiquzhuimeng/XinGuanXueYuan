package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.ToolDao;
import com.xg.domain.Tool;

public class ToolDaoImpl extends BaseDAO<Tool> implements ToolDao {

	@Override
	public Tool selectToolByIdAndTable(int id, String table) {
		String sql = "select title,date,content,author from " + table + " where id = ?";
		Tool notice = new Tool();
		notice = query(sql, id);
		return notice;
	}

	@Override
	public List<Tool> selectToolByIdAndTable(String table) {
		List<Tool> notices = new ArrayList<Tool>();
		String sql = "SELECT id,title,date from " + table + " order by date desc";
		
		notices = queryForList(sql);
		return notices;
	}

}
