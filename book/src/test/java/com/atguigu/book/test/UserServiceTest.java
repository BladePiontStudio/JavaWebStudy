package com.atguigu.book.test;

import com.atguigu.book.pojo.User;
import com.atguigu.book.service.UserService;
import com.atguigu.book.service.impl.UserServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserServiceTest {

    @Test
    public void registerUser() {
        UserService userService = new UserServiceImpl();
        User user = new User();
        user.setUsername("小傻瓜");
        user.setPassword("666666");
        user.setEmail("666666@qq.com");
        userService.registerUser(user);
    }

    @Test
    public void login() {
        UserService userService = new UserServiceImpl();
        User user = new User();
        user.setUsername("小傻瓜");
        user.setPassword("666666");
        user.setEmail("666666@qq.com");
        if (userService.login(user) != null) {
            System.out.println("登陆成功！");
        } else {
            System.out.println("登陆失败！");
        }
    }

    @Test
    public void existsUsername() {
        UserService userService = new UserServiceImpl();
        User user = new User();
        user.setUsername("小傻瓜xxx");
        if (userService.existsUsername(user.getUsername())) {
            System.out.println("用户名存在！");
        } else {
            System.out.println("用户名不存在！");
        }
    }
}