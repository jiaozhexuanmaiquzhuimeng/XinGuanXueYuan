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
		String sql = "SELECT id,title,date from td_studentwork order by date desc";
		
		studentWorks = queryForList(sql);
		return studentWorks;
	}

	@Override
	public StudentWork selectStudentWorkById(int id) {
		StudentWork studentWork = new StudentWork();
		String sql = "select title,date,content,author from td_studentwork where id = ?";
		studentWork = query(sql, id);
		return studentWork;
	}

}
