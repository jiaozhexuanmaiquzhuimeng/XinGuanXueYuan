package com.xg.dao;

import java.util.List;

import com.xg.domain.CollegeIntroduction;

public interface CollegeIntroductionDao {

	List<CollegeIntroduction> selectTitleAndDateByTable(String table);

	CollegeIntroduction selectCollegeIntroductionById(int id);

}

