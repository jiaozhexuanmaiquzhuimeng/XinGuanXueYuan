package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.CreativeDao;
import com.xg.domain.Creative;

public class CreativeDaoImpl extends BaseDAO<Creative> implements CreativeDao {

	@Override
	public List<Creative> selectCreativeWork() {
		List<Creative> creatives = new ArrayList<Creative>();
		String sql = "SELECT id,title,date from td_graduate";
		
		creatives = queryForList(sql);
		return creatives;
	}

}
