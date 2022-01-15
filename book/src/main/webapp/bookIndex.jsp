<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="cn">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>书城首页</title>

    <!-- Bootstrap core CSS -->
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/index.css" rel="stylesheet">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .nav-btn {
            margin-right: 3px;
        }
    </style>
</head>
<body>

<div class="container">
    <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
            <div class="col-4 pt-1">
                <a class="text-muted" href="#">尚硅谷书城</a>
            </div>
            <div class="col-1">
                <form class="form-inline">
                    <div class="form-group">
                        <label class="form-label" for="priceStart">价格</label>
                        <input type="text" class="form-control" style="width: 60px;" id="priceStart" placeholder="0">
                        <label class="form-label" for="priceEnd">-</label>
                        <input type="text" class="form-control" style="width: 60px;" id="priceEnd" placeholder="200">
                        <a class="text-muted" href="#" aria-label="Search">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none"
                                 stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                 class="mx-3" role="img" viewBox="0 0 24 24" focusable="false"><title>Search</title>
                                <circle cx="10.5" cy="10.5" r="7.5"/>
                                <path d="M21 21l-5.2-5.2"/>
                            </svg>
                        </a>
                    </div>
                </form>
            </div>
            <div class="col-4">
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        用户：${sessionScope.user.username}
                        <a class="btn btn-sm btn-outline-secondary nav-btn" href="${pageContext.request.contextPath}/cart.jsp">购物车</a>
                        <a class="btn btn-sm btn-outline-secondary nav-btn"
                           href="${pageContext.request.contextPath}/user?action=logout">退 出</a>
                    </c:when>
                    <c:otherwise>
                        <a class="btn btn-sm btn-outline-secondary nav-btn" href="register.jsp">注 册</a>
                        <a class="btn btn-sm btn-outline-secondary nav-btn"
                           href="${pageContext.request.contextPath}/login.jsp">登 陆</a>
                    </c:otherwise>
                </c:choose>

            </div>
        </div>
    </header>

    <div class="nav-scroller py-1 mb-2">
        <nav class="nav d-flex ">
            <a class="p-2 text-muted" href="#">教育</a>
            <a class="p-2 text-muted" href="#">历史</a>
            <a class="p-2 text-muted" href="#">科学</a>
            <a class="p-2 text-muted" href="#">计算机</a>
            <a class="p-2 text-muted" href="#">天文学</a>
            <a class="p-2 text-muted" href="#">小说</a>
        </nav>
    </div>

    <div class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
        <c:if test="${not empty sessionScope.cart}">
        <div class="col-md-6 px-0">
            <p class="lead my-3">你的购物车中有${sessionScope.cart.totalCount}件书品</p>
            <c:if test="${not empty sessionScope.lastname}">
            <p class="lead mb-0"><a href="#" class="text-white font-weight-bold">您刚刚将《${sessionScope.lastname}》加入购物车</a></p>
            </c:if>
        </div>
        </c:if>
    </div>

    <div class="row mb-2">
        <c:forEach items="${requestScope.page.items}" var="book">
            <div class="col-md-6">
                <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                    <div class="col p-4 d-flex flex-column position-static">
                        <strong class="d-inline-block mb-2 text-primary">计算机</strong>
                        <h3 class="mb-0">${book.name}</h3>
                        <div class="mb-1 text-muted">${book.price}¥</div>
                        <p class="card-text mb-auto">${book.author}</p>
                        <a href="${pageContext.request.contextPath}/cart?action=addItem&id=${book.id}" class="stretched-link">加入购物车</a>
                    </div>
                    <div class="col-auto d-none d-lg-block">
                        <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg"
                             role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice"
                             focusable="false"><title>Placeholder</title>
                            <rect width="100%" height="100%" fill="#55595c"/>
                            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
                        </svg>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<footer class="blog-footer">
    <p>尚硅谷书城 <a href="https://getbootstrap.com/">RandolfJay</a> </p>
</footer>

</body>
</html>
