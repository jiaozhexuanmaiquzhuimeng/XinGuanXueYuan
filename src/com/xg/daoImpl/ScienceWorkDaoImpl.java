package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.ScienceWorkDao;
import com.xg.domain.Notice;
import com.xg.domain.ScienceWork;

public class ScienceWorkDaoImpl extends BaseDAO<ScienceWork> implements ScienceWorkDao {

	@Override
	public List<ScienceWork> selectScienceWork() {
		List<ScienceWork> scienceWork = new ArrayList<ScienceWork>();
		String sql = "SELECT id,title,date from td_sciencework order by date desc";
		
		scienceWork = queryForList(sql);
		return scienceWork;
	}

	@Override
	public ScienceWork selectScienceWorkById(int id) {
		ScienceWork scienceWork = new ScienceWork();
		String sql = "select title,date,content,author from td_sciencework where id = ?";
		scienceWork = query(sql, id);
		return scienceWork;
	}

}
