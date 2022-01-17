package com.atguigu.book.web;

import com.alibaba.fastjson.JSON;
import com.atguigu.book.pojo.Result;
import com.atguigu.book.pojo.User;
import com.atguigu.book.service.UserService;
import com.atguigu.book.service.impl.UserServiceImpl;
import com.google.code.kaptcha.servlet.KaptchaServlet;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;

public class UserServlet extends BaseServlet {
    private UserService userService = new UserServiceImpl();

    protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String keep = request.getParameter("keep");
        System.out.println(username);
        System.out.println(password);
        System.out.println(keep);
        User user = userService.login(new User(0, username, password, null));
        if (user != null) {
            if (keep != null) {
                Cookie cookie = new Cookie("username", username);
                response.addCookie(cookie);
            } else {
                Cookie cookie = new Cookie("username", "");
                response.addCookie(cookie);
            }
            //保存登陆状态
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            request.getSession().setAttribute("message", "登陆成功！");
            request.getSession().setAttribute("jumpUrl", "index.jsp");
            response.sendRedirect(request.getContextPath() + "/message.jsp");
        } else {
            request.getSession().setAttribute("message", "您输入的账户密码错误！");
            request.getSession().setAttribute("jumpUrl", "login.jsp");
            response.sendRedirect(request.getContextPath() + "/message.jsp");
        }
    }

    protected void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("user", null);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取请求参数
        User user = new User();
        user.setEmail(request.getParameter("email"));
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        //获取存在session中的验证码
        Object token = request.getSession().getAttribute(KAPTCHA_SESSION_KEY);
        String code = request.getParameter("code");

        Result result = new Result();
        //2.验证验证码
        if (token == null || !token.equals(code)) {
            result.setCode(-1);
            result.setMessage("验证码错误！");
            response.getWriter().print(JSON.toJSON(result));
            return;
        }
        //2.检测账户是否存在
        UserService userService = new UserServiceImpl();
        if (userService.existsUsername(user.getUsername())) {
            result.setCode(-1);
            result.setMessage("账户已经存在！");
        } else {
            //3.保存用户注册数据
            userService.registerUser(user);
            result.setCode(1);
            result.setMessage("账户创建成功！");
        }
        response.getWriter().print(JSON.toJSON(result));
    }
}
