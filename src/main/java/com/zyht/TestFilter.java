package com.zyht;/********************************************************************
 /**
 * @Project: jsp_web
 * @Package com.zyht
 * @author guohongjin
 * @date 2018/1/29 11:46
 * @Copyright: 2018 www.zyht.com Inc. All rights reserved.
 * @version V1.0
 */

import javax.servlet.*;
import java.io.IOException;

/**
 * @author guohongjin
 * @ClassName TestFilter
 * @Description 类描述
 * @date 2018/1/29
 */
public class TestFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println(filterConfig.getInitParameter("test"));
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {
        System.out.println("销毁filter");
    }
}
