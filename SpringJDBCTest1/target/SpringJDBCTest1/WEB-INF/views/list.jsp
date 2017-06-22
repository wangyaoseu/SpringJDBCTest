<%--
  Created by IntelliJ IDEA.
  User: wangyao
  Date: 2017/6/22
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Show Page</title>
</head>
<body>
<h1>Hello World!</h1>
<table border="1" cellspacing="0" cellpadding="10">
    <tr>
        <th>ID</th>
        <th>LastName</th>
        <th>Email</th>
    </tr>

    <c:forEach items="${employees}" var="emp">
        <tr>
            <th>${emp.id}</th>
            <th>${emp.lastName}</th>
            <th>${emp.email}</th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
