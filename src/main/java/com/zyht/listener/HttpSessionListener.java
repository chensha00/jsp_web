package com.zyht.listener;/********************************************************************
 /**
 * @Project: jsp_web
 * @Package com.zyht.listener
 * @author guohongjin
 * @date 2018/1/29 14:55
 * @Copyright: 2018 www.zyht.com Inc. All rights reserved.
 * @version V1.0
 */

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * @author guohongjin
 * @ClassName HttpSessionListener
 * @Description 类描述
 * @date 2018/1/29
 */
public class HttpSessionListener implements HttpSessionAttributeListener {
    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        System.out.println(event.getName()+"值:"+event.getValue());
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {

    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {

    }
}
