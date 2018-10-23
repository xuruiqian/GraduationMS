<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%--
  Created by IntelliJ IDEA.
  User: ruiqian.xu
  Date: 23/10/2018
  Time: 12:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<tiles:insertDefinition name="base.definition">
    <tiles:putAttribute name="title" value="Sign In"/>
    <tiles:putAttribute name="body">
        <div class="form-group">
            <h1>测试requestSCOPE的map测试练习</h1>
            <form class="form" action="../../Account/DoLogin" method="POST">
                Username:<input class="form-control" type="text" name="loginname"><br>
                password:<input class="form-control" type="text" name="password"><br>
                <input type="submit" value="Sign In"><br>
            </form>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>
