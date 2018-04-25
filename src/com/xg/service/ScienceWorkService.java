package com.xg.service;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.ScienceWorkDao;
import com.xg.daoImpl.ScienceWorkDaoImpl;
import com.xg.domain.ScienceWork;
import com.xg.domain.TeachingWork;


public class ScienceWorkService {
	
	ScienceWorkDao scienceWorkDao = new ScienceWorkDaoImpl();
	
	public List<ScienceWork> selectScienceWork() {
		List<ScienceWork> scienceWorks = new ArrayList<ScienceWork>();
		scienceWorks = scienceWorkDao.selectScienceWork();
		return scienceWorks;
	}

}
