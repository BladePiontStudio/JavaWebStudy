package com.atguigu.book.service.impl;

import com.atguigu.book.pojo.Book;
import com.atguigu.book.service.BookService;
import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;

public class BookServiceImplTest {
    private BookService bookService = new BookServiceImpl();

    @Test
    public void addBook() {
        bookService.addBook(new Book(null, "你好啊", "12312", new BigDecimal(100), 100, 99, "static/img/default.jpg"));
    }

    @Test
    public void deleteBookById() {
        bookService.deleteBookById(23);
    }

    @Test
    public void updateBook() {
        bookService.updateBook(new Book(22, "你好啊", "12312", new BigDecimal(100), 100, 99, "static/img/default.jpg"));
    }

    @Test
    public void queryBooks() {
        for (Book book : bookService.queryBooks()) {
            System.out.println(book.getName());
        }
    }
}