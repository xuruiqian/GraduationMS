<%--
  Created by IntelliJ IDEA.
  User: ruiqian.xu
  Date: 20/10/2018
  Time: 9:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="<%=basePath%>springmvcdemo/Home/Index">~Home/Index~</a>
<br/>
<h1>测试requestSCOPE的map测试练习</h1>
<form action="<%=basePath%>springmvcdemo/Home/Index"method="POST">
    this is test province:<br/>
    Username:<input type="text" name="name"><br>
    password:<input type="text" name="password"><br>
    email:<input type="text" name="email"><br>
    age:<input type="text" name="age"><br>
    <input type="submit" value="提交"><br>
 </form>
</body>
</html>
