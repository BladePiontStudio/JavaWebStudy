<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">cookie的创建</a>
<ul>
    <li><a href="Cookie?action=createCookie" target="_blank">cookie创建</a></li>
    <li><a href="Cookie?action=getCookie" target="_blank">cookie获取</a></li>
    <li><a href="Cookie?action=updateCookie" target="_blank">cookie值修改</a></li>
    <li>cookie的存活周期</li>
    <li>
        <ul>
            <li><a href="Cookie?action=getCookieLiveTime" target="_blank">cookie的默认存活时间</a></li>
            <li><a href="Cookie?action=deleteCookie" target="_blank">cookie的立即删除</a></li>
            <li><a href="Cookie?action=oneHourCookie" target="_blank">cookie的存活一小时</a></li>
        </ul>
    </li>
    <li>cookie的路径设置</li>
    <li>cookie的用户免登陆</li>
</ul>
</body>
</html>