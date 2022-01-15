package com.atguigu.book.utils;

import javax.servlet.http.Cookie;

public class CookiesUtils {
    public static String getCookie(Cookie[] cookies, String name) {
        if (cookies == null || name == null || cookies.length == 0) {
            return null;
        }
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals(name)) {
                return cookie.getValue();
            }
        }
        return null;
    }
}
