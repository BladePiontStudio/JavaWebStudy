package com.atguigu.book.service.impl;

import com.atguigu.book.pojo.Cart;
import com.atguigu.book.pojo.CartItem;
import com.atguigu.book.service.OrderService;
import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;

public class OrderServiceImplTest {
    private OrderService orderService = new OrderServiceImpl();

    @Test
    public void createOrder() {
        Cart cart = new Cart();
        cart.addItem(new CartItem(2,"数据结构与算法",1,new BigDecimal(80),new BigDecimal(80)));
        cart.addItem(new CartItem(2,"数据结构与算法",1,new BigDecimal(80),new BigDecimal(80)));
        orderService.createOrder(cart,1);
    }
}