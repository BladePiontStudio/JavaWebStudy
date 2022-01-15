<%--
  Created by IntelliJ IDEA.
  User: randolfjay
  Date: 2022/1/9
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside class="lyear-layout-sidebar">

    <!-- logo -->
    <div id="logo" class="sidebar-header">
        <a href="index.html"><img src="/book/static/back/images/logo-sidebar.png" title="LightYear"
                                  alt="LightYear"/></a>
    </div>
    <div class="lyear-layout-sidebar-scroll">

        <nav class="sidebar-main">
            <ul class="nav nav-drawer">
                <li class="nav-item active"><a href="index.html"><i class="mdi mdi-home"></i> 后台首页</a></li>

                <li class="nav-item nav-item-has-subnav active open">
                    <a href="javascript:void(0)"><i class="mdi mdi-format-align-justify"></i> 图书管理</a>
                    <ul class="nav nav-subnav">
                        <li class="active"><a  href="${pageContext.request.contextPath}/manager/book?action=list">图书列表</a></li>
                        <li><a href="${pageContext.request.contextPath}/manager/book_add.jsp">新增</a></li>
                    </ul>
                </li>
            </ul>
        </nav>

        <div class="sidebar-footer">
            <p class="copyright">Copyright &copy; 2019. <a target="_blank"
                                                           href="http://lyear.itshubao.com">IT书包</a> All rights
                reserved.</p>
        </div>
    </div>

</aside>