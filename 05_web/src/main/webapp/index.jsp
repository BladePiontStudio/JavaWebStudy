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
<a href="hello-servlet">这是05_web index.jsp页面！</a>
<h1>练习内容</h1>
<ul class="list-group">
    <a href="/05_web/forward"><li class="list-group-item">请求转发</li></a>
    <a href="/05_web/forward2"><li class="list-group-item">请求转发目的地</li></a>
    <a href="/05_web/response"><li class="list-group-item">请求重定向</li></a>
</ul>
</body>
</html>