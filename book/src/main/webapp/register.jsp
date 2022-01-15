<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <form action="#" id="register" method="post">
        <h2>欢迎注册
            <i class="fa fa-long-arrow-down"></i>
        </h2>
        <div class="form-style-agile">
            <label>
                <i class="fa fa-user"></i>
                账号
            </label>
            <input placeholder="请输入您的账号" name="username" id="username" type="text" value="" required="">
        </div>
        <div class="form-style-agile">
            <label>
                <i class="fa fa-user"></i>
                邮箱
            </label>
            <input placeholder="请输入您的邮箱" name="email" id="email" type="text" value="" required="">
        </div>
        <div class="form-style-agile">
            <label>
                <i class="fa fa-unlock-alt"></i>
                密码
            </label>
            <input placeholder="请输入您的密码" name="Password" id="password" type="password" required="">
        </div>
        <div class="form-style-agile">
            <label>
                <i class="fa fa-unlock-alt"></i>
                重复密码
            </label>
            <input placeholder="请输入您的密码" name="Password2" id="password2" type="password" required="">
        </div>
        <div class="form-style-agile">
            <label id="refreshCode">
                <img id="codeImg" src="${pageContext.request.contextPath}/kaptcha.jpg">
                <i class="fa fa-unlock-alt"></i>
                刷新验证码
            </label>
            <input placeholder="请输入您的验证码" name="code" id="code" type="text" required="">
        </div>
        <!-- checkbox -->
        <div class="wthree-text">
            <ul>
                <li>
                    <label class="anim">
                    </label>
                </li>
                <li>
                    <a href="/book/">已有账户，马上登陆</a>
                </li>
            </ul>
        </div>
        <!-- //checkbox -->
        <input type="submit" id="submit" value="注 册">
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
<script>
    //注册
    $("#register").submit(function () {
        let username = $("#username").val();
        let email = $("#email").val();
        let password = $("#password").val();
        let password2 = $("#password2").val();
        let code = $("#code").val();
        if (password !== password2) {
            alert("两次密码输入不一致，请重新输入！")
            $("#password").val("");
            $("#password2").val("");
        }
        $.ajax({
            url: "/book/user?action=register",
            data: {username: username, email: email, password: password, code: code},
            method: "POST",
            dataType: "json",
            error: function () {
                alert("网络错误！");
            },
            success: function (data) {
                alert(data.message);
            }
        })
        return false;
    });
    //刷新验证码
    $("#refreshCode").click(function () {
        $("#codeImg").attr("src", "${pageContext.request.contextPath}/kaptcha.jpg?" + new Date().getTime());
    });
</script>
<!-- //effect js -->
</body>

</html>