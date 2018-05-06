package com.xg.utils;

import java.util.List;

import com.fasterxml.jackson.databind.deser.DataFormatReaders.Match;

public class Page<T> {

	// ��ǰҳ��ҳ��	����
	private int pageNo;

	// ��ǰҳ��ŵĶ���	��ѯ
	private List<T> list;

	// ÿҳ��ʾ��¼������	�̶�
	private int pageSize = 3;

	// �ܵļ�¼����	��ѯ
	private long totalItemNumber;
	
	//��ҳ��	����
	private int TotalPageNumber;

	// ���췽�����õ�ǰҳ
	public Page(int pageNo) {
		super();
		this.pageNo = pageNo;
	}

	// ��ȡ��ǰҳ
	public int getPageNo() {
		if (pageNo < 0) {
			pageNo = 1;
		}

		if (pageNo > getTotalPageNumber()) {
			pageNo = getTotalPageNumber();
		}
		return pageNo;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public List<T> getList() {
		return list;
	}

	// �����ҳ��
	public int getTotalPageNumber() {
		
		int totalPageNumber = (int) Math.ceil(totalItemNumber*1.0 / pageSize) ;

		return totalPageNumber;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setTotalItemNumber(long totalItemNumber) {
		this.totalItemNumber = totalItemNumber;
	}

	public boolean isHasNext() {
		if (getPageNo() < getTotalPageNumber()) {
			return true;
		}
		return false;
	}

	public boolean isHasPrev() {
		if (getPageNo() > 1) {
			return true;
		}
		return false;
	}

	public int getPrevPage() {
		if (isHasPrev()) {
			return getPageNo() - 1;
		}
		return getPageNo();
	}

	public int getNextPage() {
		if (isHasNext()) {
			return getPageNo() + 1;
		}
		return getPageNo();
	}

}
