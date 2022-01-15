package com.atguigu.book.web;

import com.atguigu.book.pojo.Book;
import com.atguigu.book.pojo.Cart;
import com.atguigu.book.pojo.CartItem;
import com.atguigu.book.service.BookService;
import com.atguigu.book.service.impl.BookServiceImpl;
import com.atguigu.book.utils.WebUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CartServlet extends BaseServlet {

    private BookService bookService = new BookServiceImpl();

    //添加商品项
    protected void addItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //获取传入的ID
        int id = WebUtils.parseInt(request.getParameter("id"), 0);
        //调用bookService读取图书信息
        Book book = bookService.queryBookById(id);
        //把图书信息转化为商品项
        CartItem cartItem = new CartItem(book.getId(), book.getName(), 1, book.getPrice(), book.getPrice());
        //把商品项加入购物车
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            request.getSession().setAttribute("cart", cart);
        }
        cart.addItem(cartItem);
        request.getSession().setAttribute("lastname",cartItem.getName());
        //重定向回商品页
        response.sendRedirect(request.getHeader("Referer"));
    }

    //删除商品项
    protected void deleteItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart != null) {
            //删除原来的购物车商品项
            cart.deleteItem(id);
            //重定向回购物车页
            response.sendRedirect(request.getHeader("Referer"));
        }
    }

    //清空购物车
    protected void clear(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart != null) {
            //清空购物车
            cart.clear();
            //重定向回购物车页
            response.sendRedirect(request.getHeader("Referer"));
        }
    }

    //修改商品数量
    protected void updateCount(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));
        Integer count = Integer.valueOf(request.getParameter("count"));
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        if (cart != null) {
            cart.updateCount(id, count);
            //重定向回购物车页
            response.sendRedirect(request.getHeader("Referer"));
        }
    }
}
