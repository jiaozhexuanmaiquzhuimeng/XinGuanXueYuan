package com.xg.filter;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

/**
 * @author 国真
 * 继承HttpServletRequestWrapper类是采用了装饰者模式
 */
public class CharSetRequest extends HttpServletRequestWrapper {

    public CharSetRequest(HttpServletRequest request) {
        super(request); //调用父类的构造器，给父类传递底层对象
    }

    //增强getParameter()方法
    @Override
    public String getParameter(String name) {
        String value = super.getParameter(name);
        //判断当前请求是否为get请求，若是则回退，重解
        if (getMethod().equalsIgnoreCase("GET")) {
            try {
                value = new String(value.getBytes("iso-8859-1"), "utf-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        //返回
        return value;
    }

}
