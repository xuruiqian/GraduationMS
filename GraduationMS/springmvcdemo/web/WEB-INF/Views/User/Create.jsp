<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertDefinition name="subPage.definition">
    <tiles:putAttribute name="title" value="User Detail"/>
    <tiles:putAttribute name="body">
        <div class='container-fluid'>
            <div class='row-fluid' id='content-wrapper'>
                <div class='span12'>
                    <div class='group-header'>
                        <div class='row-fluid'>
                            <div class='span6 offset3'>
                                <div class='text-center'>
                                    <h2>Detailed look on form elements</h2>
                                    <small class='muted'>List of all frequently used form elements that you'll need.
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
                                <form accept-charset="UTF-8" action="#" class="form form-horizontal" method="post" style="margin-bottom: 0;">
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
                                                expedita possimus
                                                sit
                                                natus exercitationem.
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
                </div>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>