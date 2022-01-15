package com.jay._13_cookie_session;

import utils.CookiesUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

public class CookieServlet extends BaseServlet {

    /**
     * 创建cookie
     *
     * @param request
     * @param response
     * @throws IOException
     */
    public void createCookie(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Cookie cookie1 = new Cookie("c1", "123");
        Cookie cookie2 = new Cookie("c2", "456");
        response.addCookie(cookie1);
        response.addCookie(cookie2);
        response.getWriter().write("set cookie success!");
    }

    /**
     * 获取cookie
     */
    protected void getCookie(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            response.getWriter().write("[" + cookie.getName() + "]=" + cookie.getValue() + "<br/>");
        }
    }

    /**
     * 更新cookie
     */
    protected void updateCookie(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Cookie cookie = CookiesUtils.getCookie(request.getCookies(), "c1");
        cookie.setValue("888");
        response.addCookie(cookie);
    }

    /**
     * 获取cookie过期时间
     */
    protected void getCookieLiveTime(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Cookie cookie = CookiesUtils.getCookie(request.getCookies(), "c1");
        response.getWriter().write("c1:存活时间:" + cookie.getMaxAge());
    }

    protected void deleteCookie(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Cookie cookie = CookiesUtils.getCookie(request.getCookies(), "c1");
        cookie.setMaxAge(0);
        response.addCookie(cookie);
        response.getWriter().write("deleteCookie...");
    }

    protected void oneHourCookie(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Cookie cookie = CookiesUtils.getCookie(request.getCookies(), "c1");
        cookie.setMaxAge(3600);
        response.addCookie(cookie);
        response.getWriter().write("oneHourCookie...");
    }
}
