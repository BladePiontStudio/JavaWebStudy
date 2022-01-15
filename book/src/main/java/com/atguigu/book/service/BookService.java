package com.atguigu.book.service;

import com.atguigu.book.pojo.Book;
import com.atguigu.book.pojo.Page;

import java.util.List;

public interface BookService {
    public void addBook(Book book);

    public void deleteBookById(Integer id);

    public void updateBook(Book book);

    public List<Book> queryBooks();

    public Book queryBookById(Integer id);

    public Page<Book> page(int pageNo, int pageSize,String url);
}
