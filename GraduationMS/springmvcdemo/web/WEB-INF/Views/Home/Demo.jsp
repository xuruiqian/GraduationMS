<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%!
    private int initVar = 0;
    private int serviceVar = 0;
    private int destroyVar = 0;
%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
<html>
<head>
    <title>life.jsp</title>
</head>
<body>
<div>
    <h1>菜鸟教程 JSP 测试实例</h1>
    <p><%=content1 %>
    </p>
    <p><%=content2 %>
    </p>
    <p><%=content3 %>
    </p>
</div>
<div>
    <a href="<%=basePath%>Home/Index">~Home/Index~</a>
</div>
<div>
    <h1>测试requestSCOPE的map测试练习</h1>
    <form action="<%=basePath%>Home/Index" method="POST">
        this is test province:<br/>
        Username:<input type="text" name="name"><br>
        password:<input type="text" name="password"><br>
        email:<input type="text" name="email"><br>
        age:<input type="text" name="age"><br>
        <input type="submit" value="提交"><br>
    </form>
</div>
</body>
</html>