package com.atguigu.book.dao;

import com.atguigu.book.dao.impl.OrderItemDaoImpl;
import com.atguigu.book.pojo.OrderItem;
import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;

public class OrderItemDaoTest {
    private OrderItemDao orderItemDao = new OrderItemDaoImpl();

    @Test
    public void saveOrderItem() {
        orderItemDao.saveOrderItem(new OrderItem(1, "图书1", 1, new BigDecimal(80), new BigDecimal(80), "100001"));
    }
}