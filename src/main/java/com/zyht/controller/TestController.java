package com.zyht.controller;/********************************************************************
 /**
 * @Project: jsp_web
 * @Package com.zyht.controller
 * @author guohongjin
 * @date 2018/1/27 11:16
 * @Copyright: 2018 www.zyht.com Inc. All rights reserved.
 * @version V1.0
 */

import com.zyht.domain.Test;
import com.zyht.service.TestService;
import com.zyht.service.TestServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author guohongjin
 * @ClassName TestController
 * @Description 类描述
 * @date 2018/1/27
 */
public class TestController extends HttpServlet {

    private TestService testService=new TestServiceImpl();

    private String name;

    private String sex;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setCharacterEncoding("UTF-8");
        System.out.println(req.getParameter("name"));
        System.out.println(req.getParameter("sex"));
        System.out.println("get请求");
//        resp.setContentType("text/html;charset=UTF-8");
//        PrintWriter printWriter=resp.getWriter();
//        printWriter.print("你好");
//        printWriter.flush();
//        printWriter.close();

//        resp.sendRedirect(req.getContextPath()+"/test.jsp");
        req.getSession().setAttribute("key","session");
        List<Test> tests=new ArrayList<Test>();
        Test test=new Test();
        Test test1=new Test();
        test.setName("lisi");
        test.setSex("男");
        test1.setName("张三");
        test1.setSex("女");
        tests.add(test);
        tests.add(test1);
        req.setAttribute("test", tests);
        req.setAttribute("testOne",test);
        req.getRequestDispatcher("/test.jsp").forward(req, resp);
//        resp.setContentType();
//        resp.addHeader("Content-Disposition", "attachment;filename=test.txt");
//        resp.setContentType("application/octet-stream" );
//        OutputStream outputStream=resp.getOutputStream();
////        outputStream=new FileOutputStream("").;
//        File file=new File("D:\\file\\test.txt");
//        InputStream inputStream=new FileInputStream(file);
//        byte[] bytes=new byte[1024];
//        int i=0;
//        while((i=inputStream.read(bytes,0,bytes.length))!=-1){
//            outputStream.write(bytes,0,bytes.length);
//        }
//        outputStream.flush();
//        outputStream.close();
//        inputStream.close();


    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        testService.test();
        req.setCharacterEncoding("UTF-8");
        req.setAttribute("test","listener");

        System.out.println(req.getParameter("userName"));
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter printWriter=resp.getWriter();
        printWriter.print("你好");
        printWriter.flush();
        printWriter.close();
    }
}
