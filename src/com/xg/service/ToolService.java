package com.xg.service;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.ToolDao;
import com.xg.daoImpl.ToolDaoImpl;
import com.xg.domain.Image;
import com.xg.domain.Tool;
import com.xg.utils.Page;

public class ToolService {
	
	ToolDao toolDao = new ToolDaoImpl();
	
	public Tool selectToolByIdAndTable(int id, String table) {
		Tool notice = new Tool();
		notice = toolDao.selectToolByIdAndTable(id, table);
		return notice;
	}

	public List<Tool> selectToolByTable(String table) {
		List<Tool> notices = new ArrayList<Tool>();
		notices = toolDao.selectToolByIdAndTable(table); 
		return notices;
	}

	public Page<Tool> getPage(int pageNo, String table) {
		return toolDao.getPage(pageNo, table);
	}

	public void add(Tool tool, String tableName) {
		toolDao.add(tool,tableName);
	}

	/**
	 * @param tool
	 */
	public void delete(Tool tool, String table) {
		toolDao.delete(tool, table);
	}

	/**
	 * @param parseInt
	 * @param table
	 * @return
	 */
	public List<Tool> selectToolByIdAndTableForList(int id, String table) {
		List<Tool> tools = new ArrayList<Tool>();
		tools = toolDao.selectToolByIdAndTableForList(id, table); 
		return tools;
	}

	/**
	 * @param tool
	 * @param tableName
	 */
	public void update(Tool tool, String tableName) {
		toolDao.update(tool,tableName);
	}

	public void addImgTable(Image image) {
		toolDao.addImgTable(image);
	}

}
