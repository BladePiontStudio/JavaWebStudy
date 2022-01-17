package com.atguigu.book.service;

import com.atguigu.book.pojo.Cart;

public interface OrderService {
    public String createOrder(Cart cart, Integer userId);
}
