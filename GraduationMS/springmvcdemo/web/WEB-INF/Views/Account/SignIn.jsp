<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<tiles:insertDefinition name="layoutAccount.definition">
    <tiles:putAttribute name="title" value="Sign In"/>
    <tiles:putAttribute name="body">
        <div id='wrapper'>
            <div class='application'>
                <div class='application-content'>
                    <a href="../../Account/SignIn">
                        <div class='icon-heart'></div>
                        <span>Flatty</span>
                    </a>
                </div>
            </div>
            <div class='controls'>
                <div class='caret'></div>
                <div class='form-wrapper'>
                    <h1 class='text-center'>Sign in</h1>
                    <form accept-charset="UTF-8" action="../../Account/PostSignIn" method="POST">
                        <div style="margin:0;padding:0;display:inline">
                            <input name="utf8" type="hidden" value="&#x2713;"/>
                        </div>
                        <div class='row-fluid'>
                            <div class='span12 icon-over-input'>
                                <input class="span12" id="username" name="username" placeholder="User Name" type="text"
                                       value=""/>
                                <i class='icon-user muted'></i>
                            </div>
                        </div>
                        <div class='row-fluid'>
                            <div class='span12 icon-over-input'>
                                <input class="span12" id="password" name="password" placeholder="Password"
                                       type="password" value=""/>
                                <i class='icon-lock muted'></i>
                            </div>
                        </div>
                        <label class="checkbox" for="remember_me">
                            <input id="remember_me" name="remember_me" value="1" type="checkbox"/>
                            Remember me
                        </label>
                        <button class="btn btn-block" name="button" type="submit">Sign in</button>
                    </form>
                    <div class='text-center'>
                        <hr class='hr-normal'/>
                        <a href="../../Account/FindBackPassword">Forgot your password?</a>
                    </div>
                </div>
            </div>
            <div class='login-action text-center'>
                <a href="../../Account/SignUp"><i class='icon-user'></i>
                    New to Flatty?
                    <strong>Sign up</strong>
                </a>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>

