package com.xg.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * 处理全站编码问题
 * @author 国真
 *
 */
public class CharSetFilter implements Filter {

    public CharSetFilter() {
        // TODO Auto-generated constructor stub
    }

    //释放
    public void destroy() {
        // TODO Auto-generated method stub
    }

    //执行过滤功能
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
    	
    	
        request.setCharacterEncoding("utf-8");  //只处理post请求
        response.setContentType("text/html;charset=utf-8"); //处理响 应的编码

        //创建山寨版的request
        CharSetRequest req = new CharSetRequest((HttpServletRequest)request);
        //放行市把request掉包
        chain.doFilter(req, response);
    }

    //初始化
    public void init(FilterConfig fConfig) throws ServletException {

    }

}
