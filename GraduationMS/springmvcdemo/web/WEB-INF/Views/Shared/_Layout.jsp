<%--
  Created by IntelliJ IDEA.
  User: ruiqian.xu
  Date: 21/10/2018
  Time: 11:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
    <title><tiles:insertAttribute name="title"/></title>
    <tiles:insertAttribute name="meta"/>
    <tiles:insertAttribute name="style"/>
    <script>
        function ShowLeftSubPage(url) {
            console.info(url);
            if (url != null)
                document.getElementById("iframeBody").src = url;
        }
    </script>
</head>
<body class='contrast-fb '>
<header>
    <tiles:insertAttribute name="header"/>
</header>
<div id="wrapper" style="width:100%;">
    <div id='main-nav-bg'></div>
    <nav id='main-nav'>
        <tiles:insertAttribute name="navigation"/>
    </nav>
    <section id='content' style="width:100%;height:1080px;">
        <tiles:insertAttribute name="body"/>
    </section>
</div>
<div id="footer">
    <tiles:insertAttribute name="footer"/>
    <div style="display: none;">
        <tiles:insertAttribute name="script"/>
    </div>
</div>
</body>
</html>