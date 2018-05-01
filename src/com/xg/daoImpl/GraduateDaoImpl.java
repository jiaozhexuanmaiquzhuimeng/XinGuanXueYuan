package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.GraduateDao;
import com.xg.domain.Graduate;

public class GraduateDaoImpl extends BaseDAO<Graduate> implements GraduateDao {

	@Override
	public List<Graduate> selectGraduate() {
		List<Graduate> graduates = new ArrayList<Graduate>();
		String sql = "SELECT id,title,date from td_graduate order by date desc";
		
		graduates = queryForList(sql);
		return graduates;
	}

	@Override
	public Graduate selectGraduateById(int id) {
		Graduate graduate = new Graduate();
		String sql = "select title,date,content,author from td_graduate where id = ?";
		graduate = query(sql, id);
		return graduate;
	}

}
