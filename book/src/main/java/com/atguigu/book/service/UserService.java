package com.atguigu.book.service;

import com.atguigu.book.pojo.User;

public interface UserService {

    /**
     * 用户注册
     *
     * @param user 用户javaBean
     */
    public void registerUser(User user);

    /**
     * 用户登陆
     *
     * @param user 用户javaBean
     * @return
     */
    public User login(User user);

    /**
     * 判断用户是否存在
     *
     * @param username 用户名
     * @return
     */
    public boolean existsUsername(String username);

}
