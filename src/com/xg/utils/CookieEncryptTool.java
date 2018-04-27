package com.xg.utils;

import java.io.UnsupportedEncodingException;

import org.apache.tomcat.util.codec.binary.Base64;

/**
 * 使用 Base64加解密 Cookie 中的信息
 * @author 国真
 *
 */
public class CookieEncryptTool {
	
	//使用 Base64 进行加密
	public static String encodeBase64(String cleartext){
		try {
			cleartext = new String(Base64.encodeBase64(cleartext.getBytes("utf-8")));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cleartext;
	}
	
	//使用 Base64 进行解密
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
