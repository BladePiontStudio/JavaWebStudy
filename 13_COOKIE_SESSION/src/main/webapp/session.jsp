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
<a href="hello-servlet">session的创建</a>
<ul>
    <li><a href="Session?action=createOrGetSession" target="_blank">session创建</a></li>
    <li><a href="Session?action=getSession" target="_blank">session获取</a></li>
    <li><a href="Session?action=updateSession" target="_blank">session值修改</a></li>
    <li>session的存活周期</li>
    <li>
        <ul>
            <li><a href="Session?action=getSessionLiveTime" target="_blank">session的默认存活时间</a></li>
            <li><a href="Session?action=deleteSession" target="_blank">session的立即删除</a></li>
            <li><a href="Session?action=oneHourSession" target="_blank">session的存活一小时</a></li>
        </ul>
    </li>
</ul>
</body>
</html>