package com.atguigu.book.service.impl;

import com.atguigu.book.dao.UserDao;
import com.atguigu.book.dao.impl.UserDaoImpl;
import com.atguigu.book.pojo.User;
import com.atguigu.book.service.UserService;

public class UserServiceImpl implements UserService {
    private UserDao userDao = new UserDaoImpl();

    @Override
    public void registerUser(User user) {
        this.userDao.saveUser(user);
    }

    @Override
    public User login(User user) {
        return this.userDao.queryUserByUsernameAndPassword(user.getUsername(), user.getPassword());
    }

    @Override
    public boolean existsUsername(String username) {
        return this.userDao.queryUserByUserName(username) != null;
    }
}
