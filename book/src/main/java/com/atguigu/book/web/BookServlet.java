package com.atguigu.book.web;

import com.atguigu.book.pojo.Book;
import com.atguigu.book.pojo.Page;
import com.atguigu.book.service.BookService;
import com.atguigu.book.service.impl.BookServiceImpl;
import com.atguigu.book.utils.WebUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class BookServlet extends BaseServlet {

    BookService bookService = new BookServiceImpl();

    /**
     * 图书列表
     *
     * @param request
     * @param response
     */
    public void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.通过BookService查询全部图书
        int pageNo = WebUtils.parseInt(request.getParameter("pageNo"), 1);
        int pageSize = WebUtils.parseInt(request.getParameter("pageSize"), Page.PAGE_SIZE);
        Page<Book> page = bookService.page(pageNo, pageSize, "/book/manager/book");
        //2.把全部图书保存到Request域中
        request.setAttribute("page", page);
        //3.请求转发的/pages/manager/book_manager.jsp 页面
        request.getRequestDispatcher("/manager/book_manager.jsp").forward(request, response);
    }

    /**
     * 新增图书
     */
    public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取请求参数
        System.out.println(request.getParameter("name"));
        Book book = WebUtils.copyParamToBean(request.getParameterMap(), new Book());
        //2.调用BookService.addBook保存图书
        bookService.addBook(book);
        //3.跳到图书列表页面
        System.out.println(request.getContextPath());
        response.sendRedirect(request.getContextPath() + "/manager/book?action=list");
    }

    /**
     * 删除图书
     */
    public void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //1.获取要删除的ID
        Integer id = Integer.valueOf(request.getParameter("id"));
        //2.删除图书
        bookService.deleteBookById(id);
        //3.跳到图书列表页面
        response.sendRedirect(request.getContextPath() + "/manager/book?action=list");
    }

    /**
     * 编辑图书
     * get请求展示编辑页面，post请求保存编辑数据
     */
    public void edit(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        if ("POST".equals(request.getMethod())) {
            //1.获取请求参数
            Book book = WebUtils.copyParamToBean(request.getParameterMap(), new Book());
            //2.调用BookService.updateBook保存图书
            bookService.updateBook(book);
            //3.跳到图书列表页面
            System.out.println(request.getContextPath());
            response.sendRedirect(request.getContextPath() + "/manager/book?action=list");
        } else {
            //1.获取请求id
            Integer id = Integer.valueOf(request.getParameter("id"));
            Book book = bookService.queryBookById(id);
            //2.将book保存到当前请求
            request.setAttribute("book", book);
            //3.展示页面
            request.getRequestDispatcher("/manager/book_edit.jsp").forward(request, response);
        }
    }
}
