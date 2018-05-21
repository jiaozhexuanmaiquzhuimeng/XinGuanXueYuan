package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.ImageDao;
import com.xg.domain.Image;


public class ImageDaoImpl extends BaseDAO<Image> implements ImageDao {

	@Override
	public List<Image> selectImage() {
		List<Image> images = new ArrayList<Image>();
		String sql = "SELECT * from td_image";
		images = queryForList(sql);
		return images;
	}

}
