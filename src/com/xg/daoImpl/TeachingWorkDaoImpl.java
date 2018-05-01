package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.xg.dao.TeachingWorkDao;
import com.xg.domain.TeachingWork;

public class TeachingWorkDaoImpl extends BaseDAO<TeachingWork> implements TeachingWorkDao {

	@Override
	public List<TeachingWork> selectTeachingWork() {
		List<TeachingWork> teachingWorks = new ArrayList<TeachingWork>();
		String sql = "SELECT id,title,date from td_teachingwork order by date desc";
		
		teachingWorks = queryForList(sql);
		return teachingWorks;
	}

	@Override
	public TeachingWork selectTeachingWorkById(int id) {
		TeachingWork teachingWork = new TeachingWork();
		String sql = "select title,date,content,author from td_teachingwork where id = ?";
		teachingWork = query(sql, id);
		return teachingWork;
	}

}
