package com.atguigu.book.dao.impl;

import com.atguigu.book.dao.OrderDao;
import com.atguigu.book.pojo.Order;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Date;

import static org.junit.Assert.*;

public class OrderDaoImplTest {
    private OrderDao orderDao = new OrderDaoImpl();

    @Test
    public void saveOrder() {
        Order order = new Order("100003", new Date(), new BigDecimal(1), 1, 1);
        orderDao.saveOrder(order);
    }
}