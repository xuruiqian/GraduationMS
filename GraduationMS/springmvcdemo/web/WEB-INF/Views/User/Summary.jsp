<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.springmvcdemo.DataRepository.Domain.UserWithBLOBs" %>
<%
    List<UserWithBLOBs> userList = (List<UserWithBLOBs>) request.getAttribute("userList");
%>
<tiles:insertDefinition name="subPage.definition">
    <tiles:putAttribute name="title" value="User Summary"/>
    <tiles:putAttribute name="body">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span5">
                    <div class="control-group">
                        <div class="container" style="padding: 100px 50px 10px;">
                            <button type="button" class="btn btn-default" title="Popover title"
                                    data-container="body" data-toggle="popover" data-placement="left"
                                    data-content="左侧的 Popover 中的一些内容">
                                左侧的 Popover
                            </button>
                            <button type="button" class="btn btn-primary" title="Popover title"
                                    data-container="body" data-toggle="popover" data-placement="top"
                                    data-content="顶部的 Popover 中的一些内容">
                                顶部的 Popover
                            </button>
                            <br/>
                            <button type="button" class="btn btn-success" title="Popover title"
                                    data-container="body" data-toggle="popover" data-placement="bottom"
                                    data-content="底部的 Popover 中的一些内容">
                                底部的 Popover
                            </button>
                            <button type="button" class="btn btn-warning" title="Popover title"
                                    data-container="body" data-toggle="popover" data-placement="right"
                                    data-content="右侧的 Popover 中的一些内容">
                                右侧的 Popover
                            </button>
                        </div>
                    </div>
                </div>
                <div class="span7">
                    <div class="control-group">
                        <table class="table">
                            <caption>User Summary</caption>
                            <thead>
                            <tr>
                                <th>User Name</th>
                                <th>Password</th>
                            </tr>
                            </thead>
                            <c:forEach var="user" items="${userList}">
                            <tr>
                                <td>${user.getName()}</td>
                                <td>${user.getPassword()}</td>
                            </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(function () {
                $("[data-toggle='popover']").popover();
            });
        </script>

    </tiles:putAttribute>
</tiles:insertDefinition>
