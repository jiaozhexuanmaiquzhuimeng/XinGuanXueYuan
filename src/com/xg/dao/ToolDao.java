package com.xg.dao;

import java.util.List;

import com.xg.domain.Tool;
import com.xg.utils.Page;

public interface ToolDao {
	
	public abstract Tool selectToolByIdAndTable(int id, String table);

	public abstract List<Tool> selectToolByIdAndTable(String table);
	
	public abstract long getTotalToolNumber(String table);

	public abstract Page<Tool> getPage(int pageNo, String table);
	
	public abstract List<Tool> getPageList(String table,int pageNo, int pageSize);

	public abstract void add(Tool tool, String tableName);

	public abstract void delete(Tool tool, String table);

	public abstract List<Tool> selectToolByIdAndTableForList(int id, String table);

	public abstract void update(Tool tool, String tableName);
}
