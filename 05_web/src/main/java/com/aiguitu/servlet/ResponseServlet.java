package com.aiguitu.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

/**
 * servlet 请求重定向功能
 * 第一种方案 设置响应头实现 301是永久重定向，302是临时重定向
 * 第二种方案 直接使用内置方法（推荐）
 */
public class ResponseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("response1");
        //方法一
        //response.setStatus(301);
        response.setStatus(302);
        response.setHeader("Location", "http://localhost:8080/05_web/");
        //方法二
        response.sendRedirect("http://localhost:8080/05_web/");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
