<%--
  Created by IntelliJ IDEA.
  User: randolfjay
  Date: 2022/1/9
  Time: 15:29
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
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-toolbar clearfix">
                                <form class="pull-right search-bar" method="get" action="#!" role="form">
                                    <div class="input-group">
                                        <div class="input-group-btn">
                                            <input type="hidden" name="search_field" id="search-field" value="title">
                                            <button class="btn btn-default dropdown-toggle" id="search-btn"
                                                    data-toggle="dropdown" type="button" aria-haspopup="true"
                                                    aria-expanded="false">
                                                标题 <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li><a tabindex="-1" href="javascript:void(0)" data-field="title">标题</a>
                                                </li>
                                                <li><a tabindex="-1" href="javascript:void(0)"
                                                       data-field="cat_name">栏目</a></li>
                                            </ul>
                                        </div>
                                        <input type="text" class="form-control" value="" name="keyword"
                                               placeholder="请输入名称">
                                    </div>
                                </form>
                                <div class="toolbar-btn-action">
                                    <a class="btn btn-primary m-r-5" href="#!"><i class="mdi mdi-plus"></i> 新增</a>
                                    <a class="btn btn-success m-r-5" href="#!"><i class="mdi mdi-check"></i> 启用</a>
                                    <a class="btn btn-warning m-r-5" href="#!"><i class="mdi mdi-block-helper"></i>
                                        禁用</a>
                                    <a class="btn btn-danger" href="#!"><i class="mdi mdi-window-close"></i> 删除</a>
                                </div>
                            </div>
                            <div class="card-body">

                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>
                                                <label class="lyear-checkbox checkbox-primary">
                                                    <input type="checkbox" id="check-all"><span></span>
                                                </label>
                                            </th>
                                            <th>编号</th>
                                            <th>标题</th>
                                            <th>书籍</th>
                                            <th>作者</th>
                                            <th>销量</th>
                                            <th>库存</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${requestScope.page.items}" var="book">
                                            <tr>
                                                <td>
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input type="checkbox" name="ids[]"
                                                               value="${book.id}"><span></span>
                                                    </label>
                                                </td>
                                                <td>${book.id}</td>
                                                <td>${book.name}</td>
                                                <td>${book.price}</td>
                                                <td>${book.author}</td>
                                                <td>${book.sales}</td>
                                                <td>${book.stock}</td>
                                                <td>
                                                    <div class="btn-group">
                                                        <a class="btn btn-xs btn-default" href="/book/manager/book?action=edit&id=${book.id}" title="编辑"
                                                           data-toggle="tooltip"><i class="mdi mdi-pencil"></i></a>
                                                        <a class="btn btn-xs btn-default" href="/book/manager/book?action=delete&id=${book.id}" title="删除"
                                                           data-toggle="tooltip"><i
                                                                class="mdi mdi-window-close"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <ul class="pagination">
                                    <c:if test="${requestScope.page.pageNo>1}">
                                        <li ><a href="${requestScope.page.url}?action=list&pageNo=1"><span>«</span></a></li>
                                    </c:if>
                                    <c:if test="${requestScope.page.pageNo-3>0}">
                                    <li><a href="${requestScope.page.url}?action=list&pageNo=${requestScope.page.pageNo-3}">${requestScope.page.pageNo-3}</a></li>
                                    </c:if>
                                    <c:if test="${requestScope.page.pageNo-2>0}">
                                    <li><a href="${requestScope.page.url}?action=list&pageNo=${requestScope.page.pageNo-2}">${requestScope.page.pageNo-2}</a></li>
                                    </c:if>
                                    <c:if test="${requestScope.page.pageNo-1>0}">
                                    <li><a href="${requestScope.page.url}?action=list&pageNo=${requestScope.page.pageNo-1}">${requestScope.page.pageNo-1}</a></li>
                                    </c:if>
                                    <li class="active"><span>${requestScope.page.pageNo}</span></li>
                                    <c:if test="${requestScope.page.pageNo+1<=requestScope.page.pageTotal}">
                                        <li><a href="${requestScope.page.url}?action=list&pageNo=${requestScope.page.pageNo+1}">${requestScope.page.pageNo+1}</a></li>
                                    </c:if>
                                    <c:if test="${requestScope.page.pageNo+2<=requestScope.page.pageTotal}">
                                        <li><a href="${requestScope.page.url}?action=list&pageNo=${requestScope.page.pageNo+2}">${requestScope.page.pageNo+2}</a></li>
                                    </c:if>
                                    <c:if test="${requestScope.page.pageNo+3<=requestScope.page.pageTotal}">
                                        <li><a href="${requestScope.page.url}?action=list&pageNo=${requestScope.page.pageNo+3}">${requestScope.page.pageNo+3}</a></li>
                                    </c:if>

                                    <li><a href="${requestScope.page.url}?action=list&pageNo=${requestScope.page.pageTotal}">»</a></li>
                                    <li><a>一共${requestScope.page.pageTotal}页，${requestScope.page.pageTotalCount}条记录。</a>跳到<input type="text" name="pageNo" id="pageNo" style="width: 40px;">页，<input type="button" value="确定" id="jump"></li>
                                </ul>

                            </div>
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
        $("#jump").click(function () {
            var pageNo = $("#pageNo").val();
            window.location.href = "${requestScope.page.url}?action=list&pageNo=" + pageNo;
        });
    });

</script>
</body>
</html>
