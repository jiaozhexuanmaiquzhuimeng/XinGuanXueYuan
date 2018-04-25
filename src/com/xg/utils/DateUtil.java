package com.xg.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	//日期转换为字符串
	public static String formatDate(Date date, String format) {
		String result = "";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		if(date != null){
			result = sdf.format(date);
		}
		return result;
	}
	
	//字符串转换为日期
	public static Date formatString(String str, String format) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.parse(str);
	}
}
