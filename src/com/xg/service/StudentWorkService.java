package com.xg.service;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.StudentWorkDao;
import com.xg.daoImpl.StudentWorkDaoImpl;
import com.xg.domain.ScienceWork;
import com.xg.domain.StudentWork;

public class StudentWorkService {
	StudentWorkDao studentWorkDao = new StudentWorkDaoImpl();

	public List<StudentWork> selectStudentWork() {
		List<StudentWork> studentWorks = new ArrayList<StudentWork>();
		studentWorks = studentWorkDao.selectStudentWork();
		return studentWorks;
	}

}
