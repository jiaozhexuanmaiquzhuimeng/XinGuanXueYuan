package com.xg.service;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.CreativeDao;
import com.xg.daoImpl.CreativeDaoImpl;
import com.xg.domain.Creative;

public class CreativeService {
	CreativeDao creativeDao = new CreativeDaoImpl();

	public List<Creative> selectCreativeWork() {
		List<Creative> creatives = new ArrayList<Creative>();
		creatives = creativeDao.selectCreativeWork();
		return creatives;
	}

}
