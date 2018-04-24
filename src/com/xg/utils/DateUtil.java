package chuangxinxuetang.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	//����ת��Ϊ�ַ���
	public static String formatDate(Date date, String format) {
		String result = "";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		if(date != null){
			result = sdf.format(date);
		}
		return result;
	}
	
	//�ַ���ת��Ϊ����
	public static Date formatString(String str, String format) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.parse(str);
	}
}
