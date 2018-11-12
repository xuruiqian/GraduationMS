<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertDefinition name="base.definition">
    <tiles:putAttribute name="title" value="example index.jsp"/>
    <tiles:putAttribute name="body">
        <input type="button" id="send" value="Get Data by async"/>
        <div id="resText" class="row-fluid">
        </div>
        <script type="text/javascript">
            $(function () {
                $('#send').click(function () {
                    $.ajax({
                        type: "GET",
                        url: " http://localhost:8090/Api/User/Summary",
                        dataType: "json",
                        success: function (data) {
                            console.info(data);
                            $('#resText').empty();   //清空resText里面的所有内容
                            var html =
                                ' <div class="span7"> ' +
                                '  <div class="control-group">' +
                                '   <table class="table">' +
                                '       <thead><tr><th>User Name</th><th>Password</th></tr> </thead>';
                            $.each(data, function (commentIndex, comment) {
                                html +=
                                    '   <tr> ' +
                                    '       <td>' + comment['name'] + '</td>' +
                                    '       <td>' + comment['password'] + '</td>' +
                                    '   </tr>';
                            });
                            html +=
                                '   </table>' +
                                '  </div>' +
                                ' </div> ';
                            $('#resText').html(html);
                        }
                    });
                });
            });
        </script>
    </tiles:putAttribute>
</tiles:insertDefinition>