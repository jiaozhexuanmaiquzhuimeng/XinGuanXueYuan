package com.xg.service;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.ToolDao;
import com.xg.daoImpl.ToolDaoImpl;
import com.xg.domain.Tool;

public class ToolService {
	
	ToolDao noticeDao = new ToolDaoImpl();
	
	public Tool selectToolByIdAndTable(int id, String table) {
		Tool notice = new Tool();
		notice = noticeDao.selectToolByIdAndTable(id, table);
		return notice;
	}

	public List<Tool> selectToolByTable(String table) {
		List<Tool> notices = new ArrayList<Tool>();
		notices = noticeDao.selectToolByIdAndTable(table); 
		return notices;
	}
	
}
