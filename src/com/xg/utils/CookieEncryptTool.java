package com.xg.utils;

import java.io.UnsupportedEncodingException;

import org.apache.tomcat.util.codec.binary.Base64;

/**
 * ʹ�� Base64�ӽ��� Cookie �е���Ϣ
 * @author ����
 *
 */
public class CookieEncryptTool {
	
	//ʹ�� Base64 ���м���
	public static String encodeBase64(String cleartext){
		try {
			cleartext = new String(Base64.encodeBase64(cleartext.getBytes("utf-8")));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cleartext;
	}
	
	//ʹ�� Base64 ���н���
	public static String decodeBase64(String ciphertext){
		try {
			ciphertext = new String(Base64.decodeBase64(ciphertext.getBytes()), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ciphertext;
	}
}
