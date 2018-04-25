package com.xg.service;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.PartyDao;
import com.xg.daoImpl.PartyDaoImpl;
import com.xg.domain.Party;

public class PartyService {
	
	PartyDao partyDao = new PartyDaoImpl();
	
	public List<Party> selectParty() {
		List<Party> partys = new ArrayList<Party>();
		partys = partyDao.selectParty();
		return partys;
	}

}
