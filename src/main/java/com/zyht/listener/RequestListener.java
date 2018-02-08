package com.zyht.listener;/********************************************************************
 /**
 * @Project: jsp_web
 * @Package com.zyht.listener
 * @author guohongjin
 * @date 2018/1/29 14:46
 * @Copyright: 2018 www.zyht.com Inc. All rights reserved.
 * @version V1.0
 */

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;

/**
 * @author guohongjin
 * @ClassName RequestListener
 * @Description 类描述
 * @date 2018/1/29
 */
public class RequestListener implements ServletRequestListener {
    @Override
    public void requestDestroyed(ServletRequestEvent sre) {
        System.out.println("请求销毁"+((HttpServletRequest)sre.getServletRequest()).getRequestURI());
    }

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        System.out.println("请求创建"+((HttpServletRequest)sre.getServletRequest()).getContextPath());
    }
}
