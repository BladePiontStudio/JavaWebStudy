<%--
  Created by IntelliJ IDEA.
  User: randolfjay
  Date: 2022/1/9
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@include file="common/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <%@include file="common/layout_sidebar.jsp" %>
        <!--End 左侧导航-->

        <!--头部信息-->
        <%@include file="common/layout_header.jsp" %>
        <!--End 头部信息-->

        <!--页面主要内容-->
        <main class="lyear-layout-content">

            <div class="container-fluid">

                <div class="row">
                    <div class="card">
                        <div class="card-header"><h4>编辑图书</h4></div>
                        <div class="card-body">

                            <form class="form-horizontal" action="${pageContext.request.contextPath}/manager/book?action=edit"
                                  method="post" enctype="application/x-www-form-urlencoded" >
                                <input type="hidden" name="id" value="${book.id}">
                                <div class="form-group">
                                    <label class="col-xs-12" for="name">书名</label>
                                    <div class="col-xs-12">
                                        <input class="form-control" type="text" id="name" value="${book.name}"
                                               name="name" placeholder="书名..">
                                        <div class="help-block"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-12" for="name">价格</label>
                                    <div class="col-xs-12">
                                        <input class="form-control" type="text" id="price" value="${book.price}"
                                               name="price" placeholder="价格..">
                                        <div class="help-block"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-12" for="author">作者</label>
                                    <div class="col-xs-12">
                                        <input class="form-control" type="text" id="author" value="${book.author}"
                                               name="author" placeholder="作者..">
                                        <div class="help-block"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-12" for="author">销量</label>
                                    <div class="col-xs-12">
                                        <input class="form-control" type="text" id="sales" value="${book.sales}"
                                               name="sales" placeholder="">
                                        <div class="help-block"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-12" for="stock">库存</label>
                                    <div class="col-xs-12">
                                        <input class="form-control" type="text" id="stock" value="${book.stock}"
                                               name="stock" placeholder="">
                                        <div class="help-block"></div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <button class="btn btn-primary" type="submit">提交</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>

            </div>

        </main>
        <!--End 页面主要内容-->
    </div>
</div>

<%@include file="common/footer.jsp" %>
<script type="text/javascript">
    $(function () {
        $('.search-bar .dropdown-menu a').click(function () {
            var field = $(this).data('field') || '';
            $('#search-field').val(field);
            $('#search-btn').html($(this).text() + ' <span class="caret"></span>');
        });
    });
</script>
</body>
</html>

