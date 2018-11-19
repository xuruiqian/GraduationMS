<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
    <title><tiles:insertAttribute name="title"/></title>
    <tiles:insertAttribute name="meta"/>
    <tiles:insertAttribute name="style"/>
</head>
<body class='contrast-fb application-error 404-error contrast-background'>
<tiles:insertAttribute name="body"/>
<div id="footer">
    <tiles:insertAttribute name="footer"/>
</div>
<tiles:insertAttribute name="script"/>
</body>
</html>