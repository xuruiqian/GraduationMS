<%--
  Created by IntelliJ IDEA.
  User: ruiqian.xu
  Date: 19/10/2018
  Time: 1:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>life.jsp</title>
</head>
<body>

<%!
    private int initVar = 0;
    private int serviceVar = 0;
    private int destroyVar = 0;
%>

<%!
    public void jspInit() {
        initVar++;
        System.out.println("jspInit(): JSP被初始化了" + initVar + "次");
    }

    public void jspDestroy() {
        destroyVar++;
        System.out.println("jspDestroy(): JSP被销毁了" + destroyVar + "次");
    }
%>

<%
    serviceVar++;
    System.out.println("_jspService(): JSP共响应了" + serviceVar + "次请求");

    String content1 = "初始化次数 : " + initVar;
    String content2 = "响应客户请求次数 : " + serviceVar;
    String content3 = "销毁次数 : " + destroyVar;
%>
<h1>菜鸟教程 JSP 测试实例</h1>
<p><%=content1 %>
</p>
<p><%=content2 %>
</p>
<p><%=content3 %>
</p>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<br/>
<br/>
<a href="<%=basePath%>Home/Index">~Home/Index~</a>
<br/>
<h1>测试requestSCOPE的map测试练习</h1>
<form action="<%=basePath%>Home/Index" method="POST">
    this is test province:<br/>
    Username:<input type="text" name="name"><br>
    password:<input type="text" name="password"><br>
    email:<input type="text" name="email"><br>
    age:<input type="text" name="age"><br>
    <input type="submit" value="提交"><br>
</form>
</body>
</html>