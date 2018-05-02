package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.CollegeIntroductionDao;
import com.xg.domain.CollegeIntroduction;

public class CollegeIntroductionDaoImpl extends BaseDAO<CollegeIntroduction> implements CollegeIntroductionDao {

	@Override
	public List<CollegeIntroduction> selectTitleAndDateByTable(String table) {
		List<CollegeIntroduction> collegeIntroductions = new ArrayList<CollegeIntroduction>();
		String sql = "SELECT id,title,date from " + table ;
		collegeIntroductions = queryForList(sql);
		return collegeIntroductions;
	}

	@Override
	public CollegeIntroduction selectCollegeIntroductionById(int id) {
		CollegeIntroduction collegeIntroduction = new CollegeIntroduction();
		String sql = "select title,date,content,author from td_college_introduction where id = ?";
		collegeIntroduction = query(sql, id);
		return collegeIntroduction;
	}

}
