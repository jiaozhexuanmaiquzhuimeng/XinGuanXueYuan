package com.xg.dao;

import java.util.List;

import com.xg.domain.ScienceWork;

public interface ScienceWorkDao {
	
	public List<ScienceWork> selectScienceWork();

	public ScienceWork selectScienceWorkById(int id);
}
