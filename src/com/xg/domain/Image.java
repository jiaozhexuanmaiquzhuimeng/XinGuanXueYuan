package com.xg.domain;

public class Image {

	private int id;
	private String imgName;
	private String imgAddress;
	private String imgTable;
	private String imgContent;
	private String title;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}

	public String getImgAddress() {
		return imgAddress;
	}

	public void setImgAddress(String imgAddress) {
		this.imgAddress = imgAddress;
	}

	public String getImgTable() {
		return imgTable;
	}

	public void setImgTable(String imgTable) {
		this.imgTable = imgTable;
	}

	public String getImgContent() {
		return imgContent;
	}

	public void setImgContent(String imgContent) {
		this.imgContent = imgContent;
	}

	public Image() {
		super();
		// TODO Auto-generated constructor stub
	}

}
