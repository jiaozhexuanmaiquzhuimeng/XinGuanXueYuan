package com.xg.dao;

import java.util.List;

import com.xg.domain.Notice;

public interface NoticeDao {
	
	public List<Notice> selectNotice();

	public Notice selectNoticeById(int id);
	
}
