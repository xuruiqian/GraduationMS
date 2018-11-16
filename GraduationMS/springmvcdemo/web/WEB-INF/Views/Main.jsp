<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertDefinition name="base.definition">
    <tiles:putAttribute name="title" value="Spring MVC Demo"/>
    <tiles:putAttribute name="body">
        <iframe id="iframeBody" src="/Home/Index" width='80%' height="100%"
                frameborder="no" border="0" marginwidth="0" marginheight="0"
                scrolling="Yes" allowtransparency="yes">
        </iframe>
    </tiles:putAttribute>
</tiles:insertDefinition>