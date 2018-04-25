package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.PartyDao;
import com.xg.domain.Party;

public class PartyDaoImpl extends BaseDAO<Party> implements PartyDao {

	@Override
	public List<Party> selectParty() {
		List<Party> partys = new ArrayList<Party>();
		String sql = "SELECT id,title,date from td_party";
		
		partys = queryForList(sql);
		return partys;
	}

}
