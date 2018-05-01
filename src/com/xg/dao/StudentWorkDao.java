package com.xg.dao;

import java.util.List;

import com.xg.domain.StudentWork;

public interface StudentWorkDao {
	public List<StudentWork> selectStudentWork();

	public StudentWork selectStudentWorkById(int id);
}
