package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.FirstNewsDao;
import com.xg.domain.FirstNews;


public class FirstNewsDaoImpl extends BaseDAO<FirstNews> implements FirstNewsDao {

	@Override
	public List<FirstNews> selectTitle() {
		List<FirstNews> titles = new ArrayList<FirstNews>();
		String sql = "SELECT id,title,date from td_firstnews";
		
		titles = queryForList(sql);
		return titles;
	}

}
