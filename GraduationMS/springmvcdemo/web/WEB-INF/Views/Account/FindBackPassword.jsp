<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<tiles:insertDefinition name="layoutAccount.definition">
    <tiles:putAttribute name="title" value="Sign In"/>
    <tiles:putAttribute name="body">
        <div id='wrapper'>
            <div class='application'>
                <div class='application-content'>
                    <a href="../../account/signin">
                        <div class='icon-heart'></div>
                        <span>Flatty</span>
                    </a>
                </div>
            </div>
            <div class='controls'>
                <div class='caret'></div>
                <div class='form-wrapper'>
                    <h1 class='text-center'>Forgot password</h1>
                    <form accept-charset="UTF-8" action="../../account/PostFindBackPassword" method="POST">
                        <div style="margin:0;padding:0;display:inline">
                            <input name="utf8" type="hidden"
                                   value="&#x2713;"/>
                        </div>
                        <div class='row-fluid'>
                            <div class='span12 icon-over-input'>
                                <input class="span12" id="email" name="email" placeholder="E-mail" type="text"
                                       value=""/>
                                <i class='icon-user muted'></i>
                            </div>
                        </div>
                        <button class="btn btn-block" name="button" type="submit">Send me instructions</button>
                    </form>
                    <div class='text-center'>
                        <hr class='hr-normal'/>
                        <a href="../../account/signin"><i class='icon-chevron-left'></i>
                            I already know my password
                        </a>
                    </div>
                </div>
            </div>
            <div class='login-action text-center'>
                <a href="../../account/signup"><i class='icon-user'></i>
                    New to System?
                    <strong>Sign up</strong>
                </a>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>