<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertDefinition name="subPage.definition">
    <tiles:putAttribute name="title" value="example index.jsp"/>
    <tiles:putAttribute name="body">
        <div class='container-fluid'>
            <div class='row-fluid' id='content-wrapper'>
                <div class='span12'>
                    <div class='row-fluid'>
                        <div class='span12'>
                            <div class='page-header'>
                                <h1 class='pull-left'>
                                    <i class='icon-comments'></i>
                                    <span>Todo list</span>
                                </h1>
                                <div class='pull-right'>
                                    <ul class='breadcrumb'>
                                        <li>
                                            <a href="index.html"><i class='icon-bar-chart'></i>
                                            </a>
                                        </li>
                                        <li class='separator'>
                                            <i class='icon-angle-right'></i>
                                        </li>
                                        <li>Components</li>
                                        <li class='separator'>
                                            <i class='icon-angle-right'></i>
                                        </li>
                                        <li class='active'>Todo list</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='alert alert-info'>
                        <a class='close' data-dismiss='alert' href='#'>&times;</a>
                        <strong>Hey there!</strong>
                        Items in todo list can be reordered by drag & drop, you can mark them as important, complete, or
                        you can delete them!
                        <i class='icon-smile'></i>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='row-fluid todo-list'>
                                <div class='span12 box box-nomargin'>
                                    <div class='box-content box-no-padding'>
                                        <div class='sortable-container'>
                                            <form accept-charset="UTF-8" action="#" class="new-todo" method="post"/>
                                            <div style="margin:0;padding:0;display:inline"><input name="utf8"
                                                                                                  type="hidden"
                                                                                                  value="&#x2713;"/><input
                                                    name="authenticity_token" type="hidden"
                                                    value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/></div>
                                            <input class='span12' id='todo_name' name='todo[name]'
                                                   placeholder='Type your new todo here...' type='text'/>
                                            <button class='btn btn-success' type='submit'>
                                                <i class='icon-plus'></i>
                                            </button>
                                            </form>
                                            <div class='date text-contrast'>Today</div>
                                            <ul class='unstyled sortable' data-sortable-axis='y'
                                                data-sortable-connect='.sortable'>
                                                <li class='important item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        Debitis dolorem et culpa repellendus aut aut.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class='item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        Aut qui enim aspernatur nulla odio ut.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class='done item'>
                                                    <label class='check pull-left todo'>
                                                        <input checked='checked' type='checkbox'/>
                                                        Sapiente iste id.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class='item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        <i class='icon-envelope-alt'></i>
                                                        Dignissimos praesentium et voluptas necessitatibus eum qui.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class='date text-contrast'>Due Wed, Sep 19, 2013</div>
                                            <ul class='unstyled sortable' data-sortable-axis='y'
                                                data-sortable-connect='.sortable'>
                                                <li class='item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        Enim voluptatem modi aut eaque natus.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class='important item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        Hic laudantium eos dolorum quam.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class='item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        Qui aut et.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class='item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        Quas pariatur nulla recusandae.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>