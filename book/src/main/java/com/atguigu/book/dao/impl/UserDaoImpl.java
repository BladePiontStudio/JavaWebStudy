package com.atguigu.book.dao.impl;

import com.atguigu.book.dao.UserDao;
import com.atguigu.book.pojo.User;

public class UserDaoImpl extends BaseDao implements UserDao {
    @Override
    public User queryUserByUserName(String username) {
        String sql = "SELECT * FROM t_user WHERE username = ? LIMIT 1";
        return queryForOne(User.class, sql, username);
    }

    @Override
    public int saveUser(User user) {
        String sql = "INSERT INTO t_user(`username`,`password`,`email`) values(?,?,?)";
        return update(sql, user.getUsername(), user.getPassword(), user.getEmail());
    }

    @Override
    public User queryUserByUsernameAndPassword(String username, String password) {
        String sql = "SELECT * FROM t_user WHERE username = ? AND password = ? LIMIT 1";
        return queryForOne(User.class, sql, username, password);
    }
}
