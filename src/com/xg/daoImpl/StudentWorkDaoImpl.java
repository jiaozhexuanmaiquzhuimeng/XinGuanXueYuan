package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.StudentWorkDao;
import com.xg.domain.ScienceWork;
import com.xg.domain.StudentWork;

public class StudentWorkDaoImpl extends BaseDAO<StudentWork> implements StudentWorkDao {

	@Override
	public List<StudentWork> selectStudentWork() {
		List<StudentWork> studentWorks = new ArrayList<StudentWork>();
		String sql = "SELECT id,title,date from td_studentwork";
		
		studentWorks = queryForList(sql);
		return studentWorks;
	}

}
