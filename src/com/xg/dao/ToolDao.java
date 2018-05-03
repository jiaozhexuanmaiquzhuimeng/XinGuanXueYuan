package com.xg.dao;

import java.util.List;

import com.xg.domain.Tool;

public interface ToolDao {
	
	public Tool selectToolByIdAndTable(int id, String table);

	public List<Tool> selectToolByIdAndTable(String table);
	
}
