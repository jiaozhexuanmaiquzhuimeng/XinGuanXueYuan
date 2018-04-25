package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.GraduateDao;
import com.xg.domain.Graduate;

public class GraduateDaoImpl extends BaseDAO<Graduate> implements GraduateDao {

	@Override
	public List<Graduate> selectGraduate() {
		List<Graduate> graduates = new ArrayList<Graduate>();
		String sql = "SELECT id,title,date from td_graduate";
		
		graduates = queryForList(sql);
		return graduates;
	}

}
