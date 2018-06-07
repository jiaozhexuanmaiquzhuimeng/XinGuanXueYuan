package com.xg.daoImpl;

import java.util.ArrayList;
import java.util.List;

import com.xg.dao.ImageDao;
import com.xg.domain.Image;


public class ImageDaoImpl extends BaseDAO<Image> implements ImageDao {

	@Override
	public List<Image> selectImage(String image) {
		List<Image> images = new ArrayList<Image>();
		String sql = "SELECT * from " + image + " order by date desc";
		images = queryForList(sql);
		return images;
	}

}
