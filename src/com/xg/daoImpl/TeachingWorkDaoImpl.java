package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.TeachingWorkDao;
import com.xg.domain.TeachingWork;

public class TeachingWorkDaoImpl extends BaseDAO<TeachingWork> implements TeachingWorkDao {

	@Override
	public List<TeachingWork> selectTeachingWork() {
		List<TeachingWork> teachingWorks = new ArrayList<TeachingWork>();
		String sql = "SELECT id,title,date from td_teachingwork";
		
		teachingWorks = queryForList(sql);
		return teachingWorks;
	}

}
