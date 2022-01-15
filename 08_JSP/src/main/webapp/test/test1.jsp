<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<%--练习 输出九九乘法表--%>
<table align="center">
    <th>九九乘法表</th>
    <% for (int i = 1; i <= 9; i++) { %>
    <tr>
        <% for (int j = 1; j <= i; j++) { %>
        <td>
            <%= i + "x" + j + "=" + (i * j) %>
        </td>
        <% } %>
    </tr>
    <% }%>
</table>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>