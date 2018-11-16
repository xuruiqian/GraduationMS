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
                                    <span>Forms styles and features</span>
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
                                        <li class='active'>Form styles and features</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box bordered-box blue-border'>
                            <div class='box-header blue-background'>
                                <div class='title'>
                                    <i class='icon-ban-circle'></i>
                                    Example form
                                </div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content box-double-padding'>
                                <form class='form' style='margin-bottom: 0;'/>
                                <fieldset>
                                    <div class='span4'>
                                        <div class='lead'>
                                            <i class='icon-github text-contrast'></i>
                                            Lorem ipsum
                                        </div>
                                        <small class='muted'>Lorem ipsum dolor sit amet, consectetur adipiscing
                                            elit. Donec nisl est, vulputate at porttitor non, interdum a mauris.
                                            Phasellus imperdiet gravida pulvinar.
                                        </small>
                                    </div>
                                    <div class='span7 offset1'>
                                        <div class='control-group'>
                                            <label class='control-label'>Full name</label>
                                            <div class='controls'>
                                                <input class='span12' id='full-name' type='text'/>
                                                <p class='help-block'/>
                                            </div>
                                        </div>
                                        <div class='control-group'>
                                            <label class='control-label'>Street</label>
                                            <div class='controls'>
                                                <input class='span12' id='address-line2'
                                                       placeholder='Street placeholder'
                                                       type='text'/>
                                                <small class='muted'>Description for street field</small>
                                            </div>
                                        </div>
                                        <div class='control-group'>
                                            <label class='control-label'>City</label>
                                            <div class='controls'>
                                                <input class='span12' id='city' placeholder='City placeholder'
                                                       type='text'/>
                                                <p class='help-block'/>
                                            </div>
                                        </div>
                                        <div class='control-group'>
                                            <label class='control-label'>Company</label>
                                            <div class='controls'>
                                                <div class='input-append'>
                                                    <input class='span6' id='appendedInputButtons1' type='text'/>
                                                    <button class='btn' type='button'>
                                                        <i class='icon-building'></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <hr class='hr-normal'/>
                                <fieldset>
                                    <div class='span4 box'>
                                        <div class='lead'>
                                            <i class='icon-ambulance contrast'></i>
                                            Dapibus suscipit arcu
                                        </div>
                                        <small class='muted'>Proin eu nibh ut urna tristique rhoncus. Sed euismod,
                                            quam sed dignissim imperdiet, nulla leo vehicula mi, a sagittis lacus
                                            augue nec sapien.
                                        </small>
                                    </div>
                                    <div class='span7 offset1'>
                                        <div class='control-group'>
                                            <label class='control-label'>Disabled input</label>
                                            <div class='controls'>
                                                <input class='span12' disabled="" id='full-name1' type='text'/>
                                                <p class='help-block'/>
                                            </div>
                                        </div>
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
                                        <div class='control-group'>
                                            <label class='control-label'>Money</label>
                                            <div class='controls'>
                                                <div class='input-prepend input-append'>
                                                    <span class='add-on'>$</span>
                                                    <input class='span6 text-right' id='appendedPrependedInput'
                                                           type='text'/>
                                                    <span class='add-on'>.00</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <div class='form-actions' style='margin-bottom: 0;'>
                                    <div class='text-right'>
                                        <div class='btn btn-primary btn-large'>
                                            <i class='icon-save'></i>
                                            Save
                                        </div>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class='group-header'>
                        <div class='row-fluid'>
                            <div class='span6 offset3'>
                                <div class='text-center'>
                                    <h2>Detailed look on form elements</h2>
                                    <small class='muted'>List of all frequently used form elements that you'll
                                        need.
                                    </small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-header blue-background'>
                                <div class='title'>
                                    <div class='icon-edit'></div>
                                    Form controls
                                </div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content'>
                                <form accept-charset="UTF-8" action="#" class="form form-horizontal" method="post"
                                      style="margin-bottom: 0;"/>
                                <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden"
                                                                                      value="&#x2713;"/><input
                                        name="authenticity_token" type="hidden"
                                        value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/></div>
                                <div class='control-group'>
                                    <label class='control-label' for='inputText1'>Text field</label>
                                    <div class='controls'>
                                        <input id='inputText1' placeholder='Text field' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='inputPassword4'>Password field</label>
                                    <div class='controls'>
                                        <input id='inputPassword4' placeholder='Password field' type='password'
                                               value='Top secret!'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='inputTextArea1'>Textarea</label>
                                    <div class='controls'>
                                        <textarea id='inputTextArea1' placeholder='Textarea' rows='3'></textarea>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>Uneditable input</label>
                                    <div class='controls'>
                                        <span class='input-xlarge uneditable-input'>Some value here</span>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='disabledInput1'>Disabled input</label>
                                    <div class='controls'>
                                        <input class='input-xlarge' disabled='' id='disabledInput1'
                                               placeholder='Disabled input here...'
                                               type='text'/>
                                    </div>
                                </div>
                                <hr class='hr-normal'/>
                                <div class='control-group'>
                                    <label class='control-label'>Checkboxes</label>
                                    <div class='controls'>
                                        <label class='checkbox'>
                                            <input type='checkbox' value=''/>
                                            Culpa ea.
                                        </label>
                                        <label class='checkbox'>
                                            <input type='checkbox' value=''/>
                                            Et dolorum et dolores consequuntur enim deleniti molestiae qui quam.
                                        </label>
                                        <label class='checkbox'>
                                            <input type='checkbox' value=''/>
                                            Nostrum provident molestias optio quia vel non eius possimus aut ut
                                            ducimus.
                                        </label>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>Inline checkboxes</label>
                                    <div class='controls'>
                                        <label class='checkbox inline'>
                                            <input type='checkbox' value=''/>
                                            Magni
                                        </label>
                                        <label class='checkbox inline'>
                                            <input type='checkbox' value=''/>
                                            Explicabo
                                        </label>
                                        <label class='checkbox inline'>
                                            <input type='checkbox' value=''/>
                                            Odit
                                        </label>
                                    </div>
                                </div>
                                <hr class='hr-normal'/>
                                <div class='control-group'>
                                    <label class='control-label'>Radios</label>
                                    <div class='controls'>
                                        <label class='radio'>
                                            <input type='radio' value=''/>
                                            Doloribus omnis est explicabo dignissimos necessitatibus molestiae est
                                            expedita possimus sit natus exercitationem.
                                        </label>
                                        <label class='radio'>
                                            <input type='radio' value=''/>
                                            Beatae quae recusandae dolor esse fugiat est harum culpa.
                                        </label>
                                        <label class='radio'>
                                            <input type='radio' value=''/>
                                            Aut sapiente autem facere sint adipisci officiis voluptatem.
                                        </label>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>Inline radios</label>
                                    <div class='controls'>
                                        <label class='radio inline'>
                                            <input type='radio' value=''/>
                                            Vitae
                                        </label>
                                        <label class='radio inline'>
                                            <input type='radio' value=''/>
                                            Ratione
                                        </label>
                                        <label class='radio inline'>
                                            <input type='radio' value=''/>
                                            Sit
                                        </label>
                                    </div>
                                </div>
                                <hr class='hr-normal'/>
                                <div class='control-group'>
                                    <label class='control-label' for='inputSelect'>Select</label>
                                    <div class='controls'>
                                        <select id='inputSelect'>
                                            <option/>
                                            1
                                            <option/>
                                            2
                                            <option/>
                                            3
                                            <option/>
                                            4
                                            <option/>
                                            5
                                        </select>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='inputSelectMulti'>Multiple select</label>
                                    <div class='controls'>
                                        <select id='inputSelectMulti' multiple='multiple'>
                                            <option/>
                                            1
                                            <option/>
                                            2
                                            <option/>
                                            3
                                            <option/>
                                            4
                                            <option/>
                                            5
                                        </select>
                                    </div>
                                </div>
                                <hr class='hr-normal'/>
                                <div class='control-group warning'>
                                    <label class='control-label' for='inputWarning'>Input with warning</label>
                                    <div class='controls'>
                                        <input id='inputWarning' type='text'/>
                                        <span class='help-inline'>Something may have gone wrong</span>
                                    </div>
                                </div>
                                <div class='control-group error'>
                                    <label class='control-label' for='inputError'>Input with error</label>
                                    <div class='controls'>
                                        <input id='inputError' type='text'/>
                                        <span class='help-inline'>Please correct the error</span>
                                    </div>
                                </div>
                                <div class='control-group info'>
                                    <label class='control-label' for='inputInfo'>Input with info</label>
                                    <div class='controls'>
                                        <input id='inputInfo' type='text'/>
                                        <span class='help-inline'>Username is already taken</span>
                                    </div>
                                </div>
                                <div class='control-group success'>
                                    <label class='control-label' for='inputSuccess'>Input with success</label>
                                    <div class='controls'>
                                        <input id='inputSuccess' type='text'/>
                                        <span class='help-inline'>Woohoo!</span>
                                    </div>
                                </div>
                                <div class='form-actions'>
                                    <button class='btn btn-primary' type='submit'>
                                        <i class='icon-save'></i>
                                        Save
                                    </button>
                                    <button class='btn' type='submit'>Cancel</button>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class='group-header'>
                        <div class='row-fluid'>
                            <div class='span6 offset3'>
                                <div class='text-center'>
                                    <h2>Prepends and appends</h2>
                                    <small class='muted'>Text inputs can be prepended/appended with buttons, text
                                        labels, etc.
                                    </small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-header green-background'>
                                <div class='title'>
                                    <div class='icon-plus'></div>
                                    Prepends and appends
                                </div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content'>
                                <form accept-charset="UTF-8" action="#" class="form form-horizontal" method="post"
                                      style="margin-bottom: 0;"/>
                                <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden"
                                                                                      value="&#x2713;"/><input
                                        name="authenticity_token" type="hidden"
                                        value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/></div>
                                <div class='control-group'>
                                    <label class='control-label' for='prependedInput'>Prepended input</label>
                                    <div class='controls'>
                                        <div class='input-prepend'>
                                            <span class='add-on'>@</span>
                                            <input id='prependedInput' placeholder='Username' type='text'/>
                                        </div>
                                    </div>
                                </div>
                                <hr class='hr-normal'/>
                                <div class='control-group'>
                                    <label class='control-label' for='appendedInput'>Appended input</label>
                                    <div class='controls'>
                                        <div class='input-append'>
                                            <input id='appendedInput' type='text'/>
                                            <span class='add-on'>.00</span>
                                        </div>
                                    </div>
                                </div>
                                <hr class='hr-normal'/>
                                <div class='control-group'>
                                    <label class='control-label' for='appendedPrependedInput1'>Combined</label>
                                    <div class='controls'>
                                        <div class='input-prepend input-append'>
                                            <span class='add-on'>$</span>
                                            <input id='appendedPrependedInput1' type='text'/>
                                            <span class='add-on'>.00</span>
                                        </div>
                                    </div>
                                </div>
                                <hr class='hr-normal'/>
                                <div class='control-group'>
                                    <label class='control-label' for='appendedInputButtons'>With buttons</label>
                                    <div class='controls'>
                                        <div class='input-append'>
                                            <input id='appendedInputButtons' type='text'/>
                                            <button class='btn' type='button'>Search</button>
                                            <button class='btn' type='button'>Options</button>
                                        </div>
                                    </div>
                                </div>
                                <hr class='hr-normal'/>
                                <div class='control-group'>
                                    <label class='control-label' for='appendedPrependedDropdownButton'>With
                                        dropdowns</label>
                                    <div class='controls'>
                                        <div class='input-prepend input-append'>
                                            <div class='btn-group'>
                                                <button class='btn dropdown-toggle' data-toggle='dropdown'>
                                                    Action
                                                    <span class='caret'></span>
                                                </button>
                                                <ul class='dropdown-menu'>
                                                    <li>
                                                        <a href='#'>Action</a>
                                                    </li>
                                                    <li>
                                                        <a href='#'>Another action</a>
                                                    </li>
                                                    <li>
                                                        <a href='#'>Something else here</a>
                                                    </li>
                                                    <li class='divider'></li>
                                                    <li>
                                                        <a href='#'>Separated link</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <input id='appendedPrependedDropdownButton' type='text'/>
                                            <div class='btn-group'>
                                                <button class='btn dropdown-toggle' data-toggle='dropdown'>
                                                    Action
                                                    <span class='caret'></span>
                                                </button>
                                                <ul class='dropdown-menu'>
                                                    <li>
                                                        <a href='#'>Action</a>
                                                    </li>
                                                    <li>
                                                        <a href='#'>Another action</a>
                                                    </li>
                                                    <li>
                                                        <a href='#'>Something else here</a>
                                                    </li>
                                                    <li class='divider'></li>
                                                    <li>
                                                        <a href='#'>Separated link</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class='group-header'>
                        <div class='row-fluid'>
                            <div class='span6 offset3'>
                                <div class='text-center'>
                                    <h2>Sizes</h2>
                                    <small class='muted'>All form elements can be sized in relative way (using
                                        .input-mini - .input-xxlarge, ...) or in percentage way (using .span1 -
                                        .span12).
                                    </small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-header purple-background'>
                                <div class='title'>
                                    <div class='icon-resize-horizontal'></div>
                                    Relative sizing
                                </div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content'>
                                <form accept-charset="UTF-8" action="#" class="form form-horizontal" method="post"
                                      style="margin-bottom: 0;"/>
                                <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden"
                                                                                      value="&#x2713;"/><input
                                        name="authenticity_token" type="hidden"
                                        value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/></div>
                                <div class='control-group'>
                                    <label class='control-label'>Mini</label>
                                    <div class='controls'>
                                        <input class='input-mini' placeholder='.input-mini' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>Small</label>
                                    <div class='controls'>
                                        <input class='input-small' placeholder='.input-small' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>Medium</label>
                                    <div class='controls'>
                                        <input class='input-medium' placeholder='.input-medium' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>Large</label>
                                    <div class='controls'>
                                        <input class='input-large' placeholder='.input-large' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>XLarge</label>
                                    <div class='controls'>
                                        <input class='input-xlarge' placeholder='.input-xlarge' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>XXLarge</label>
                                    <div class='controls'>
                                        <input class='input-xxlarge' placeholder='.input-xxlarge' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>Block level</label>
                                    <div class='controls'>
                                        <input class='input-block-level' placeholder='.input-block-level' type='text'/>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-header orange-background'>
                                <div class='title'>
                                    <div class='icon-resize-full'></div>
                                    Grid sizing
                                </div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content'>
                                <form accept-charset="UTF-8" action="#" class="form form-horizontal" method="post"
                                      style="margin-bottom: 0;"/>
                                <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden"
                                                                                      value="&#x2713;"/><input
                                        name="authenticity_token" type="hidden"
                                        value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/></div>
                                <div class='control-group'>
                                    <label class='control-label'>.span1</label>
                                    <div class='controls'>
                                        <input class='span1' placeholder='.span1' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span2</label>
                                    <div class='controls'>
                                        <input class='span2' placeholder='.span2' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span3</label>
                                    <div class='controls'>
                                        <input class='span3' placeholder='.span3' type='text'/>
                                    </div>
                                </div>
                                <hr class='hr-normal'/>
                                <div class='control-group'>
                                    <label class='control-label'>.span3</label>
                                    <div class='controls'>
                                        <select class='span3'>
                                            <option/>
                                            1
                                            <option/>
                                            2
                                            <option/>
                                            3
                                            <option/>
                                            4
                                            <option/>
                                            5
                                        </select>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span2</label>
                                    <div class='controls'>
                                        <select class='span2'>
                                            <option/>
                                            1
                                            <option/>
                                            2
                                            <option/>
                                            3
                                            <option/>
                                            4
                                            <option/>
                                            5
                                        </select>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span1</label>
                                    <div class='controls'>
                                        <select class='span1'>
                                            <option/>
                                            1
                                            <option/>
                                            2
                                            <option/>
                                            3
                                            <option/>
                                            4
                                            <option/>
                                            5
                                        </select>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-header red-background'>
                                <div class='title'>
                                    <div class='icon-resize-full'></div>
                                    Complete grid sizing
                                </div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content'>
                                <form accept-charset="UTF-8" action="#" class="form form-horizontal" method="post"
                                      style="margin-bottom: 0;"/>
                                <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden"
                                                                                      value="&#x2713;"/><input
                                        name="authenticity_token" type="hidden"
                                        value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/></div>
                                <div class='control-group'>
                                    <label class='control-label'>.span1 - .span11</label>
                                    <div class='controls controls-row'>
                                        <input class='span1' placeholder='.span1' type='text'/>
                                        <input class='span11' placeholder='.span11' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span2 - .span10</label>
                                    <div class='controls controls-row'>
                                        <input class='span2' placeholder='.span2' type='text'/>
                                        <input class='span10' placeholder='.span10' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span3 - .span9</label>
                                    <div class='controls controls-row'>
                                        <input class='span3' placeholder='.span3' type='text'/>
                                        <input class='span9' placeholder='.span9' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span4 - .span8</label>
                                    <div class='controls controls-row'>
                                        <input class='span4' placeholder='.span4' type='text'/>
                                        <input class='span8' placeholder='.span8' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span5 - .span7</label>
                                    <div class='controls controls-row'>
                                        <input class='span5' placeholder='.span5' type='text'/>
                                        <input class='span7' placeholder='.span7' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span6 - .span6</label>
                                    <div class='controls controls-row'>
                                        <input class='span6' placeholder='.span6' type='text'/>
                                        <input class='span6' placeholder='.span6' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span7 - .span5</label>
                                    <div class='controls controls-row'>
                                        <input class='span7' placeholder='.span7' type='text'/>
                                        <input class='span5' placeholder='.span5' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span8 - .span4</label>
                                    <div class='controls controls-row'>
                                        <input class='span8' placeholder='.span8' type='text'/>
                                        <input class='span4' placeholder='.span4' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span9 - .span3</label>
                                    <div class='controls controls-row'>
                                        <input class='span9' placeholder='.span9' type='text'/>
                                        <input class='span3' placeholder='.span3' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span10 - .span2</label>
                                    <div class='controls controls-row'>
                                        <input class='span10' placeholder='.span10' type='text'/>
                                        <input class='span2' placeholder='.span2' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span11 - .span1</label>
                                    <div class='controls controls-row'>
                                        <input class='span11' placeholder='.span11' type='text'/>
                                        <input class='span1' placeholder='.span1' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>.span12</label>
                                    <div class='controls controls-row'>
                                        <input class='span12' placeholder='.span12' type='text'/>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class='group-header'>
                        <div class='row-fluid'>
                            <div class='span6 offset3'>
                                <div class='text-center'>
                                    <h2>Additional form styles</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-header blue-background'>
                                <div class='title'>
                                    <div class='icon-edit'></div>
                                    Striped form
                                </div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content box-no-padding'>
                                <form accept-charset="UTF-8" action="#" class="form form-horizontal form-striped"
                                      method="post" style="margin-bottom: 0;"/>
                                <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden"
                                                                                      value="&#x2713;"/><input
                                        name="authenticity_token" type="hidden"
                                        value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/></div>
                                <div class='control-group'>
                                    <label class='control-label' for='inputText2'>Text field</label>
                                    <div class='controls'>
                                        <input class='input-block-level' id='inputText2' placeholder='Text field'
                                               type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='inputPassword1'>Password field</label>
                                    <div class='controls'>
                                        <input class='input-block-level' id='inputPassword1'
                                               placeholder='Password field'
                                               type='password' value='Top secret!'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='inputTextArea2'>Textarea</label>
                                    <div class='controls'>
                                            <textarea class='input-block-level' id='inputTextArea2'
                                                      placeholder='Textarea'
                                                      rows='3'></textarea>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='disabledInput2'>Disabled input</label>
                                    <div class='controls'>
                                        <input class='input-block-level' disabled='' id='disabledInput2'
                                               placeholder='Disabled input here...' type='text'/>
                                    </div>
                                </div>
                                <div class='form-actions' style='margin-bottom: 0;'>
                                    <div class='btn btn-primary btn-large'>
                                        <i class='icon-save'></i>
                                        Save
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-header red-background'>
                                <div class='title'>
                                    <div class='icon-edit'></div>
                                    Vertical form
                                </div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content'>
                                <form accept-charset="UTF-8" action="#" class="form" method="post"
                                      style="margin-bottom: 0;"/>
                                <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden"
                                                                                      value="&#x2713;"/><input
                                        name="authenticity_token" type="hidden"
                                        value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/></div>
                                <div class='control-group'>
                                    <label class='control-label' for='inputText'>Text field</label>
                                    <div class='controls'>
                                        <input class='input-block-level' id='inputText' placeholder='Text field'
                                               type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='inputPassword'>Password field</label>
                                    <div class='controls'>
                                        <input class='input-block-level' id='inputPassword' placeholder='Password field'
                                               type='password' value='Top secret!'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='inputTextArea'>Textarea</label>
                                    <div class='controls'>
                                            <textarea class='input-block-level' id='inputTextArea'
                                                      placeholder='Textarea'
                                                      rows='3'></textarea>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label'>Uneditable input</label>
                                    <div class='controls'>
                                        <span class='uneditable-input input-block-level'>Some value here</span>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='disabledInput'>Disabled input</label>
                                    <div class='controls'>
                                        <input class='input-block-level' disabled='' id='disabledInput'
                                               placeholder='Disabled input here...'
                                               type='text'/>
                                    </div>
                                </div>
                                <div class='form-actions' style='margin-bottom: 0;'>
                                    <div class='btn btn-primary btn-large'>
                                        <i class='icon-save'></i>
                                        Save
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>