package com.xg.dao;

import java.util.List;

import com.xg.domain.Image;

public interface ImageDao {

	public List<Image> selectImage(String image);

}
