package com.aiguitu.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class Hello2Servlet extends HttpServlet {

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        super.init(servletConfig);
        System.out.println("初始化方法");
        //1.获取Servlet-name的值
        String servletName = servletConfig.getServletName();
        System.out.println("这个是：" + servletName + " servlet程序！");
        //2.获取servlet程序配置的参数
        System.out.println(" servlet程序username参数值：" + servletConfig.getInitParameter("username"));
        //3.获取servletContext对象
        ServletContext context = servletConfig.getServletContext();
        String account = context.getInitParameter("username");
        System.out.println("servlet context params account ：" + account);
        //获取当前工程路径
        System.out.println(context.getContextPath());
        //获取当前工程的绝对路径
        System.out.println("当前工程的绝对路径：" + context.getRealPath("/"));
        context.setAttribute("count", 1);
        System.out.println("count：" + context.getAttribute("count"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
