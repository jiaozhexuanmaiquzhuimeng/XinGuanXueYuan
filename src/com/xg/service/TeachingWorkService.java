package com.xg.service;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.TeachingWorkDao;
import com.xg.daoImpl.TeachingWorkDaoImpl;
import com.xg.domain.TeachingWork;

public class TeachingWorkService {
	
	TeachingWorkDao teachingWorkDao = new TeachingWorkDaoImpl();
	
	public List<TeachingWork> selectTeachingWork() {
		List<TeachingWork> teachingWorks = new ArrayList<TeachingWork>();
		teachingWorks = teachingWorkDao.selectTeachingWork();
		return teachingWorks;
	}

	public TeachingWork selectTeachingWorkById(int id) {
		TeachingWork teachingWork = new TeachingWork();
		teachingWork = teachingWorkDao.selectTeachingWorkById(id);
		return teachingWork;
	}

}
