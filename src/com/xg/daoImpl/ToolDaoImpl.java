package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.ToolDao;
import com.xg.domain.Tool;
import com.xg.utils.Page;

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
		String sql = "SELECT id,title,date from " + table + " order by id desc";

		notices = queryForList(sql);
		return notices;
	}

	@Override
	public long getTotalToolNumber(String table) {
		String sql = "select count(id) from " + table;
		return getSingleVal(sql);
	}

	@Override
	public Page<Tool> getPage(int pageNo, String table) {
		Page<Tool> page = new Page<>(pageNo);

		page.setTotalItemNumber(getTotalToolNumber(table));
		// 获得当前页的书
		page.setList(getPageList(table, pageNo, page.getPageSize()));

		return page;
	}

	@Override
	public List<Tool> getPageList(String table, int pageNo, int pageSize) {
		String sql = "SELECT * from " + table + " order by id desc limit ?,?";
		List<Tool> tools = new ArrayList<Tool>();

		tools = queryForList(sql, (pageNo - 1) * pageSize, pageSize);
		return tools;
	}

	@Override
	public void add(Tool tool, String tableName) {
		String sql = "INSERT INTO "+tableName+"(`title`,`date`,`author`,`content`) VALUES (?,?,?,?)";
		long insert = insert(sql, tool.getTitle(), tool.getDate(), tool.getAuthor(), tool.getContent());
		System.out.println(insert);
	}

}
