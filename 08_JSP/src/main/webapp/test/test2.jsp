<%@ page import="java.util.List" %>
<%@ page import="pojo.Student" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: randolfjay
  Date: 2021/12/29
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Student> studentList = new ArrayList<Student>();
    for (int i = 0; i < 10; i++) {
        studentList.add(new Student("s" + i, i, i));
    }
%>
<table>
    <th>学生列表</th>
    <% for (Student student : studentList) { %>
    <tr>
        <td><%=student.getName()%>
        </td>
        <td><%= student.getAge()%>
        </td>
        <td><%= student.getPhone()%>
        </td>
    </tr>
    <%} %>


</table>
</body>
</html>
