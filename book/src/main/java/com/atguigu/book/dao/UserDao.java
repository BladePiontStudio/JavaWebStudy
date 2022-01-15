package com.atguigu.book.dao;

import com.atguigu.book.dao.impl.BaseDao;
import com.atguigu.book.pojo.User;

public interface UserDao {
    /**
     * 根据用户名查询用户信息
     *
     * @param username
     * @return
     */
    public User queryUserByUserName(String username);

    /**
     * 保存用户信息
     *
     * @param user
     * @return
     */
    public int saveUser(User user);

    /**
     * 根据用户名和密码返回查询内容
     *
     * @return
     */
    public User queryUserByUsernameAndPassword(String username, String password);
}
