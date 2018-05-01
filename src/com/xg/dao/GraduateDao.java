package com.xg.dao;

import java.util.List;

import com.xg.domain.Graduate;


public interface GraduateDao {
	
	public List<Graduate> selectGraduate();

	public Graduate selectGraduateById(int id);
}
