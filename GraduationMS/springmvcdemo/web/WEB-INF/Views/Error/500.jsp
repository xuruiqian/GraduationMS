<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<tiles:insertDefinition name="layoutError.definition">
    <tiles:putAttribute name="title" value="500"/>
    <tiles:putAttribute name="body">
        <div id='wrapper'>
            <div class='error-type'>
                <i class='icon-cogs'></i>
                <span>500</span>
            </div>
            <div class='error-message'>
                Ooops! Something went wrong.
                <br/>
                But don't worry - we'll fix that soon.
            </div>
            <div class='youcan'>
                <small class='text-center'>You can</small>
            </div>
            <div class='search'>
                <form accept-charset="UTF-8" action="#" method="post">
                    <div style="margin:0;padding:0;display:inline">
                        <input name="utf8" type="hidden" value="&#x2713;"/>
                        <input name="authenticity_token" type="hidden"
                               value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/>
                    </div>
                    <input id="q_" name="q[]" placeholder="Search..." size="30" type="text"/>
                    <button class="btn"><i class='icon-search'></i></button>
                </form>
            </div>
            <div class='youcan'>
                <small class='text-center'>or</small>
            </div>
            <a href="../../Home/Index" class="btn btn-block">
                <i class='icon-chevron-left'></i>
                Go back
            </a>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>