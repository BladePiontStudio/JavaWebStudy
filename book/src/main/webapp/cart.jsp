<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: randolfjay
  Date: 2022/1/14
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车</title>
</head>
<body>
<div id="main">
    <table>
        <tr>
            <td>商品名称</td>
            <td>数量</td>
            <td>单价</td>
            <td>金额</td>
            <td>操作</td>
        </tr>
        <c:if test="${not empty sessionScope.cart.items}">
            <c:forEach items="${sessionScope.cart.items}" var="book">
                <tr>
                    <td>${book.value.name}</td>
                    <td><input type="number" class="cart-count" value="${book.value.count}" data-id="${book.value.id}">
                    </td>
                    <td>${book.value.price}</td>
                    <td>${book.value.totalPrice}</td>
                    <td><a href="${pageContext.request.contextPath}/cart?action=deleteItem&id=${book.value.id}">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
    </table>
    <%--如果购物车非空，才输出金额总结页面--%>
    <c:if test="${not empty sessionScope.cart.items}">
        <div class="cart-info">
            <span>购物车中一共有${sessionScope.cart.totalCount}件商品</span>
            <span>总金额：${sessionScope.cart.totalPrice}元</span>
            <span><a href="${pageContext.request.contextPath}/cart?action=clear">清空购物车</a></span>
            <span><a href="checkout.jsp">去结账</a></span>
        </div>
    </c:if>
</div>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
<script>
    console.log(1)
    $(function($) {
        $(".cart-count").change(function () {
            var id = $(this).data("id");
            var count = $(this).val();
            window.location.href = "${pageContext.request.contextPath}/cart?action=updateCount&id=" + id + "&count=" + count;
        })
    });
</script>
</body>
</html>
