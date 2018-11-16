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
                                    <i class='icon-edit'></i>
                                    <span>Wizard</span>
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
                                        <li>
                                            Forms
                                        </li>
                                        <li class='separator'>
                                            <i class='icon-angle-right'></i>
                                        </li>
                                        <li class='active'>Wizard</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-content box-padding'>
                                <div class='fuelux'>
                                    <div class='wizard'>
                                        <ul class='steps'>
                                            <li class='active' data-target='#step1'>
                                                <span class='step'>1</span>
                                            </li>
                                            <li data-target='#step2'>
                                                <span class='step'>2</span>
                                            </li>
                                            <li data-target='#step3'>
                                                <span class='step'>3</span>
                                            </li>
                                            <li data-target='#step4'>
                                                <span class='step'>4</span>
                                            </li>
                                        </ul>
                                        <div class='actions'>
                                            <button class='btn btn-mini btn-prev'><i class='icon-arrow-left'></i>Prev
                                            </button>
                                            <button class='btn btn-mini btn-success btn-next' data-last='Finish'>
                                                Next
                                                <i class='icon-arrow-right'></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class='step-content'>
                                        <hr class='hr-normal'/>
                                        <form accept-charset="UTF-8" action="#" class="form" method="post"
                                              style="margin-bottom: 0;"/>
                                        <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden"
                                                                                              value="&#x2713;"/><input
                                                name="authenticity_token" type="hidden"
                                                value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/></div>
                                        <div class='step-pane active' id='step1'>
                                            <div class='control-group'>
                                                <label class='control-label' for='inputText'>Text field</label>
                                                <div class='controls'>
                                                    <input class='input-block-level' id='inputText'
                                                           placeholder='Text field' type='text'/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class='step-pane' id='step2'>
                                            <div class='control-group'>
                                                <label class='control-label' for='inputPassword'>Password field</label>
                                                <div class='controls'>
                                                    <input class='input-block-level' id='inputPassword'
                                                           placeholder='Password field' type='password'/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class='step-pane' id='step3'>
                                            <div class='control-group'>
                                                <label class='control-label' for='inputTextArea'>Textarea</label>
                                                <div class='controls'>
                                                    <textarea class='input-block-level' id='inputTextArea'
                                                              placeholder='Textarea' rows='3'></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class='step-pane' id='step4'>
                                            <div class='control-group'>
                                                <div class='controls'>
                                                    <label class='checkbox inline'>
                                                        <input id='inlineCheckbox1' type='checkbox' value='option1'/>
                                                        Inline 1
                                                    </label>
                                                    <label class='checkbox inline'>
                                                        <input id='inlineCheckbox2' type='checkbox' value='option2'/>
                                                        Inline 2
                                                    </label>
                                                    <label class='checkbox inline'>
                                                        <input id='inlineCheckbox3' type='checkbox' value='option3'/>
                                                        Inline 3
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        </form>
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