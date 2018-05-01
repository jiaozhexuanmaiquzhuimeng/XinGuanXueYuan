package com.xg.service;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.GraduateDao;
import com.xg.daoImpl.GraduateDaoImpl;
import com.xg.domain.Graduate;

public class GraduateService {

	GraduateDao graduateDao = new GraduateDaoImpl();
	
	public List<Graduate> selectGraduate() {
		List<Graduate> graduates = new ArrayList<Graduate>();
		graduates = graduateDao.selectGraduate();
		return graduates;
	}

	public Graduate selectGraduateById(int id) {
		Graduate graduate = new Graduate();
		graduate = graduateDao.selectGraduateById(id); 
		return graduate;
	}

}
