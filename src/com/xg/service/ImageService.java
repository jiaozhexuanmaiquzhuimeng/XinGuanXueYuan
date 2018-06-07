package com.xg.service;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.ImageDao;
import com.xg.daoImpl.ImageDaoImpl;
import com.xg.domain.Image;

public class ImageService {
	ImageDao imageDao = new ImageDaoImpl();

	public List<Image> selectImage(String image) {
		List<Image> images = new ArrayList<Image>();
		images = imageDao.selectImage(image);
		return images;
	}

}
