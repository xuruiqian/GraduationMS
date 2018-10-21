<%@ page import="com.springmvcdemo.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    List<User> userList = (List<User>) request.getAttribute("userList");
%>
<html>
<head>
    <title>Title</title>
    <link href='../Style/bootstrap/bootstrap.css' media='all' rel='stylesheet' type='text/css'/>
    <link href='../Style/bootstrap/bootstrap-responsive.css' media='all' rel='stylesheet' type='text/css'/>
</head>
<body>
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
                        <th>Login Name</th>
                        <th>Password</th>
                    </tr>
                    </thead>
                    <%
                        for (User user : userList) {
                    %>
                    <tr>
                        <td><%=user.getUsername()%>
                        </td>
                        <td><%=user.getLoginname()%>
                        </td>
                        <td><%=user.getPassword()%>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- / jquery -->
<script src='../Scripts/jquery/jquery.min.js' type='text/javascript'></script>
<!-- / jquery mobile events (for touch and slide) -->
<script src='../Scripts/plugins/mobile_events/jquery.mobile-events.min.js' type='text/javascript'></script>
<!-- / jquery migrate (for compatibility with new jquery) -->
<script src='../Scripts/jquery/jquery-migrate.min.js' type='text/javascript'></script>
<!-- / jquery ui -->
<script src='../Scripts/jquery_ui/jquery-ui.min.js' type='text/javascript'></script>
<!-- / bootstrap -->
<script src='../Scripts/bootstrap/bootstrap.min.js' type='text/javascript'></script>
<script src='../Scripts/plugins/flot/excanvas.js' type='text/javascript'></script>

<script>
    $(function () {
        $("[data-toggle='popover']").popover();
    });
</script>

</body>
</html>
