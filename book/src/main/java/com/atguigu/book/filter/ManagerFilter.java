package com.atguigu.book.filter;

import com.atguigu.book.pojo.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ManagerFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
        System.out.println("权限检查开始");
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        User user = (User) httpServletRequest.getSession().getAttribute("user");
        if (user == null) {
            httpServletRequest.getSession().setAttribute("message", "请登陆后再使用！");
            httpServletRequest.getSession().setAttribute("jumpUrl", "login.jsp");
            httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/message.jsp");
        }
        chain.doFilter(request, response);
        System.out.println("权限检查结束");
    }
}
