<%--
  Created by IntelliJ IDEA.
  User: randolfjay
  Date: 2021/12/30
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
1.协议: ${ pageContext.request.scheme }<br/>
2.服务器IP: ${ pageContext.request.serverName}<br/>
3.服务器端口号: ${ pageContext.request.serverPort}<br/>
4.获取工程路径: ${ pageContext.request.contextPath}<br/>
5.获取请求方法: ${ pageContext.request.method}<br/>
6.获取客户端IP: ${ pageContext.request.remoteHost}<br/>
7.获取会话的id编号: ${ pageContext.request.requestedSessionId}<br/>
8:get参数 ${param}
8:指定get参数 ${param['name']}
<c:if></c:if>
</body>
</html>
