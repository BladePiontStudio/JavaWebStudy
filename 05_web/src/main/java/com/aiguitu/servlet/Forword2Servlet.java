package com.aiguitu.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class Forword2Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("forward2。。");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
