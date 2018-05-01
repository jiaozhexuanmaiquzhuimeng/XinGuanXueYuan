package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.NoticeDao;
import com.xg.domain.Notice;

public class NoticeDaoImpl extends BaseDAO<Notice> implements NoticeDao {

	@Override
	public List<Notice> selectNotice() {
		List<Notice> notices = new ArrayList<Notice>();
		String sql = "SELECT id,title,date from td_notice order by date desc";
		
		notices = queryForList(sql);
		return notices;
	}

	@Override
	public Notice selectNoticeById(int id) {
		String sql = "select title,date,content,author from td_notice where id = ?";
		Notice notice = new Notice();
		notice = query(sql, id);
		return notice;
	}

}
