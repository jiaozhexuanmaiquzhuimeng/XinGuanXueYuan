package com.xg.service;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.CollegeIntroductionDao;
import com.xg.daoImpl.CollegeIntroductionDaoImpl;
import com.xg.domain.CollegeIntroduction;

public class CollegeIntroductionService {
	
	CollegeIntroductionDao collegeIntroductionDao = new CollegeIntroductionDaoImpl();  

	public List<CollegeIntroduction> selectTitleAndDateByTable(String table) {
		List<CollegeIntroduction> collegeIntroductions = new ArrayList<CollegeIntroduction>();
		collegeIntroductions = collegeIntroductionDao.selectTitleAndDateByTable(table);
		
		return collegeIntroductions;
	}

	public CollegeIntroduction selectCollegeIntroductionById(int id) {
		CollegeIntroduction collegeIntroduction = new CollegeIntroduction();
		collegeIntroduction = collegeIntroductionDao.selectCollegeIntroductionById(id);
		return collegeIntroduction;
	}

}
