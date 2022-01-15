<%--
  Created by IntelliJ IDEA.
  User: randolfjay
  Date: 2021/12/30
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/09_EL_JSTL/upload" enctype="multipart/form-data" method="post">
    用户名：<input type="text" name="username"><br/>
    头像:<input type="file" name="photo"><br/>
    <input type="submit" value="提交">
</form>
</body>
</html>
