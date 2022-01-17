package com.atguigu.book.web;

import com.atguigu.book.pojo.Cart;
import com.atguigu.book.pojo.User;
import com.atguigu.book.service.OrderService;
import com.atguigu.book.service.impl.OrderServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class OrderServlet extends BaseServlet {
    private OrderService orderService = new OrderServiceImpl();

    /**
     * 生成订单
     */
    protected void createOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取购物车对象
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        // 获取UserId
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }
        Integer userId = user.getId();
        // 生成订单
        String orderId = orderService.createOrder(cart, userId);
        request.getSession().setAttribute("orderId", orderId);
        response.sendRedirect(request.getContextPath() + "/checkout.jsp");
    }
}
