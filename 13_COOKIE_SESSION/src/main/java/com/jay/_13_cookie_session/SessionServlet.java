package com.jay._13_cookie_session;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

public class SessionServlet extends BaseServlet {
    protected void createOrGetSession(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 创建和获取session会话对象
        HttpSession session = request.getSession();
        // 判断 当前session会话，是否是新创建出来的
        boolean isNew = session.isNew();
        // 获取session会话的唯一标识
        String id = session.getId();
        //
        session.setAttribute("s1","666");
        session.getAttribute("username");
        session.setMaxInactiveInterval(66);
        session.getMaxInactiveInterval();
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("得到Session，它的id是：" + id + "<br/>");
        response.getWriter().write("这个Session是否是新建的：" + isNew + "<br/>");
    }
}
