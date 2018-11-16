<%--
  Created by IntelliJ IDEA.
  User: ruiqian.xu
  Date: 21/10/2018
  Time: 10:44 PM
  To change this template use File | Settings | File Templates.
--%>
<div class='navigation'>
    <div class='search'>
        <form accept-charset="UTF-8" method="get">
            <div style="margin:0;padding:0;display:inline">
                <input name="utf8" type="hidden" value="&#x2713;"/>
            </div>
            <div class='search-wrapper'>
                <input autocomplete="off" class="search-query" id="q" name="q"
                       placeholder="Search..." type="text"
                       value=""/>
                <button class="btn btn-link icon-search" name="button" type="submit"></button>
            </div>
        </form>
    </div>
    <ul class='nav nav-stacked'>
        <li class=''>
            <a href="javascript:ShowLeftSubPage('../../Home/Index');">
                <i class='icon-dashboard'></i>
                <span>Dashboard</span>
            </a>
        </li>
        <li class='active'>
            <a class='dropdown-collapse' href='#'>
                <i class='icon-user'></i>
                <span>Security Management</span>
                <i class='icon-angle-down angle-down'></i>
            </a>
            <ul class='in nav nav-stacked'>
                <li class='active'>
                    <a href="javascript:ShowLeftSubPage('../../User/Summary');">
                        <i class='icon-user'></i>
                        <span>User Management</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../User/Summary');">
                        <i class='icon-user'></i>
                        <span>Role Management</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../User/Summary');">
                        <i class='icon-user'></i>
                        <span>Permission Management</span>
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a class='dropdown-collapse ' href='#'>
                <i class='icon-cogs'></i>
                <span>Demo</span>
                <i class='icon-angle-down angle-down'></i>
            </a>
            <ul class='nav nav-stacked'>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/index');">
                        <i class='icon-bar-chart'></i>
                        <span>index</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/buttons_and_icons');">
                        <i class='icon-envelope'></i>
                        <span>buttons_and_icons</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/tables');">
                        <i class='icon-comments'></i>
                        <span>tables</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/timeline');">
                        <i class='icon-pencil'></i>
                        <span>timeline</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/inplace_editing');">
                        <i class='icon-list-ul'></i>
                        <span>inplace_editing</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/fileupload');">
                        <i class='icon-file'></i>
                        <span>fileupload</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/todo');">
                        <i class='icon-list-alt'></i>
                        <span>todo</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/form_components');">
                        <i class='icon-paste'></i>
                        <span>form_components</span>
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a class='dropdown-collapse ' href='#'>
                <i class='icon-book'></i>
                <span>Example pages</span>
                <i class='icon-angle-down angle-down'></i>
            </a>
            <ul class='nav nav-stacked'>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/form_styles');">
                        <i class='icon-money'></i>
                        <span>form_styles</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/validations');">
                        <i class='icon-picture'></i>
                        <span>validations</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/wizard');">
                        <i class='icon-time'></i>
                        <span>wizard</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/faq');">
                        <i class='icon-table'></i>
                        <span>faq</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/invoice');">
                        <i class='icon-user'></i>
                        <span>invoice</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/Index');">
                        <i class='icon-question-sign'></i>
                        <span>404 Error</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/index');">
                        <i class='icon-cogs'></i>
                        <span>500 Error</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/index');">
                        <i class='icon-signin'></i>
                        <span>Sign in</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/index');">
                        <i class='icon-bullhorn'></i>
                        <span>FAQ</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/index');">
                        <i class='icon-inbox'></i>
                        <span>Orders</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/index');">
                        <i class='icon-search'></i>
                        <span>Search results</span>
                    </a>
                </li>
                <li class=''>
                    <a href="javascript:ShowLeftSubPage('../../Demo/index');">
                        <i class='icon-circle-blank'></i>
                        <span>Blank page</span>
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</div>