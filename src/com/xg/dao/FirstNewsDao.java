package com.xg.dao;

import java.util.List;

import com.xg.domain.FirstNews;

public interface FirstNewsDao {
	public List<FirstNews> selectFirstNews();

	public List<FirstNews> selectImage();
}
