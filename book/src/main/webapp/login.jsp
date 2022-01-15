<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html lang="zxx">

<head>
    <title>Home</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8"/>
    <meta name="keywords" content=""
    />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Meta tag Keywords -->
    <!-- css files -->
    <link rel="stylesheet" href="/book/static/css/style.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <link rel="stylesheet" href="/book/static/css/font-awesome.4.7.0.css">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //css files -->
    <!-- web-fonts -->

    <!-- //web-fonts -->
</head>

<body>
<!-- bg effect -->
<div id="bg">
    <canvas></canvas>
    <canvas></canvas>
    <canvas></canvas>
</div>
<!-- //bg effect -->
<!-- title -->
<h1>肾脏界管理系统</h1>
<!-- //title -->
<!-- content -->
<div class="sub-main-w3">
    <form action="${pageContext.request.contextPath}/user?action=login" method="post">
        <h2>欢迎使用
            <i class="fa fa-long-arrow-down"></i>
        </h2>
        <div class="form-style-agile">
            <label>
                <i class="fa fa-user"></i>
                账号
            </label>
            <input placeholder="请输入您的账号" name="username" type="text" value="${cookie.username.value}" required="">
        </div>
        <div class="form-style-agile">
            <label>
                <i class="fa fa-unlock-alt"></i>
                密码
            </label>
            <input placeholder="请输入您的密码" name="password" type="password" required="">
        </div>
        <!-- checkbox -->
        <div class="wthree-text">
            <ul>
                <li>
                    <label class="anim">
                        <input type="checkbox" class="checkbox" name="keep">
                        <span>保存登陆信息</span>
                    </label>
                </li>
                <li>
                    <a href="#">忘记密码？</a>
                    <a href="/book/register.html">注册账户</a>
                </li>
            </ul>
        </div>
        <!-- //checkbox -->
        <input type="submit" value="登 陆">
    </form>
</div>
<!-- //content -->

<!-- copyright -->
<div class="footer">
    <p>Copyright &copy; 2018.Company name All rights reserved.</p>
</div>
<!-- //copyright -->

<!-- Jquery -->
<script src="/book/static/js/jquery-3.3.1.min.js"></script>
<!-- //Jquery -->

<!-- effect js -->
<script src="/book/static/js/canva_moving_effect.js"></script>
<!-- //effect js -->

</body>

</html>