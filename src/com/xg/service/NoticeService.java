package com.xg.service;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.NoticeDao;
import com.xg.daoImpl.NoticeDaoImpl;
import com.xg.domain.Notice;

public class NoticeService {
	
	NoticeDao noticeDao = new NoticeDaoImpl();
	
	public List<Notice> selectNotice() {
		List<Notice> notices = new ArrayList<Notice>();
		notices = noticeDao.selectNotice();
		return notices;
	}
	
}
