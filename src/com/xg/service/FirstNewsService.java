package com.xg.service;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.FirstNewsDao;
import com.xg.daoImpl.FirstNewsDaoImpl;
import com.xg.domain.FirstNews;

public class FirstNewsService {
	FirstNewsDao firstNewsDao = new FirstNewsDaoImpl();

	public List<FirstNews> selectTitle() {
		List<FirstNews> titles = new ArrayList<FirstNews>();
		titles = firstNewsDao.selectTitle();
		return titles;
	}
	
}
