package com.atguigu.book.service.impl;

import com.atguigu.book.dao.impl.BookDaoImpl;
import com.atguigu.book.pojo.Book;
import com.atguigu.book.pojo.Page;
import com.atguigu.book.service.BookService;

import java.util.List;

public class BookServiceImpl implements BookService {

    private BookDaoImpl bookDao = new BookDaoImpl();

    @Override
    public void addBook(Book book) {
        bookDao.addBook(book);
    }

    @Override
    public void deleteBookById(Integer id) {
        bookDao.deleteBook(id);
    }

    @Override
    public void updateBook(Book book) {
        bookDao.updateBook(book);
    }

    @Override
    public List<Book> queryBooks() {
        return bookDao.queryBooks();
    }

    @Override
    public Book queryBookById(Integer id) {
        return bookDao.queryBookById(id);
    }

    public Page<Book> page(int pageNo, int pageSize,String url) {
        Page<Book> page = new Page<Book>();
        //设置当前分页url
        page.setUrl(url);
        //设置当前页码
        page.setPageNo(pageNo);
        //设置一页大小
        page.setPageSize(pageSize);
        //设置总记录数
        page.setPageTotalCount(bookDao.queryForPageTotalCount());
        //设置总页码数量
        page.setPageTotal((int) Math.ceil(page.getPageTotalCount() / page.getPageSize()));
        int begin = (page.getPageNo() - 1) * pageSize;
        page.setItems(bookDao.queryForPageItems(begin, page.getPageSize()));
        return page;
    }
}
