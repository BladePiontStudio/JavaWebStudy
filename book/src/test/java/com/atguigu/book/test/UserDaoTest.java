package com.atguigu.book.test;

import com.atguigu.book.dao.UserDao;
import com.atguigu.book.dao.impl.UserDaoImpl;
import com.atguigu.book.pojo.User;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserDaoTest {

    @Test
    public void queryUserByUserName() {
        UserDao userDao = new UserDaoImpl();
        System.out.println(userDao.queryUserByUserName("admin"));
    }

    @Test
    public void saveUser() {
        UserDao userDao = new UserDaoImpl();
        User user = new User();
        user.setUsername("admin");
        user.setPassword("123456");
        user.setEmail("admin@qq.com");
        System.out.println(userDao.saveUser(user));
    }

    @Test
    public void queryUserByUsernameAndPassword() {
        UserDao userDao = new UserDaoImpl();
        System.out.println(userDao.queryUserByUsernameAndPassword("admin", "123456"));
    }
}