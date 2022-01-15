package com.atguigu.book.pojo;

import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;

public class CartTest {
    private Cart cart = new Cart();

    @Test
    public void addItem() {
        cart.addItem(new CartItem(1, "围城", 1, new BigDecimal(10), new BigDecimal(10)));
        cart.addItem(new CartItem(1, "围城", 1, new BigDecimal(10), new BigDecimal(10)));
        cart.addItem(new CartItem(2, "围城-2", 1, new BigDecimal(10), new BigDecimal(10)));
        System.out.println(cart.toString());
    }

    @Test
    public void deleteItem() {
        this.addItem();
        cart.deleteItem(1);
        System.out.println(cart);
    }

    @Test
    public void clear() {
        this.addItem();
        cart.clear();
        System.out.println(cart);
    }

    @Test
    public void updateCount() {
        this.addItem();
        System.out.println(cart);
        cart.updateCount(2,2);
        System.out.println(cart);
    }

    @Test
    public void getTotalCount() {
        this.addItem();
        System.out.println(cart.getTotalCount());
    }

    @Test
    public void getTotalPrice() {
        this.addItem();
        System.out.println(cart.getTotalPrice());
    }

    @Test
    public void getItems() {
        this.addItem();
        System.out.println(cart.getItems());
    }

}