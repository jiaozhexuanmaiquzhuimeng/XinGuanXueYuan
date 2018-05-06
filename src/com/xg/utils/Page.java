package com.xg.utils;

import java.util.List;

import com.fasterxml.jackson.databind.deser.DataFormatReaders.Match;

public class Page<T> {

	// 当前页的页码	传递
	private int pageNo;

	// 当前页存放的东西	查询
	private List<T> list;

	// 每页显示记录的条数	固定
	private int pageSize = 3;

	// 总的记录条数	查询
	private long totalItemNumber;
	
	//总页数	计算
	private int TotalPageNumber;

	// 构造方法设置当前页
	public Page(int pageNo) {
		super();
		this.pageNo = pageNo;
	}

	// 获取当前页
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

	// 获得总页数
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
