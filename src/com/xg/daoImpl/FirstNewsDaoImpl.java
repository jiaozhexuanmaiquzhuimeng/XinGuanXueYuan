package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.FirstNewsDao;
import com.xg.domain.FirstNews;


public class FirstNewsDaoImpl extends BaseDAO<FirstNews> implements FirstNewsDao {

	@Override
	public List<FirstNews> selectFirstNews() {
		List<FirstNews> firstNews = new ArrayList<FirstNews>();
		String sql = "SELECT id,title,date from td_firstnews order by date desc";
		
		firstNews = queryForList(sql);
		return firstNews;
	}

	@Override
	public List<FirstNews> selectImage() {
		List<FirstNews> images = new ArrayList<FirstNews>();
		String sql = "SELECT id,title,date,imgname from td_firstnews order by date desc";
		images = queryForList(sql);
		return images;
	}

}
