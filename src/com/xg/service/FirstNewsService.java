package com.xg.service;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.FirstNewsDao;
import com.xg.daoImpl.FirstNewsDaoImpl;
import com.xg.domain.FirstNews;

public class FirstNewsService {
	FirstNewsDao firstNewsDao = new FirstNewsDaoImpl();

	public List<FirstNews> selectFirstNews() {
		List<FirstNews> firstNews = new ArrayList<FirstNews>();
		firstNews = firstNewsDao.selectFirstNews();
		return firstNews;
	}

	public List<FirstNews> selectImage() {
		List<FirstNews> images = new ArrayList<FirstNews>();
		images = firstNewsDao.selectImage();
		return images;
	}
	
}
