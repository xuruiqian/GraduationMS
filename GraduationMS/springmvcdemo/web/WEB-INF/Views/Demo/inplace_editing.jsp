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
                                    <i class='icon-pencil'></i>
                                    <span>In-place editing</span>
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
                                        <li class='active'>In-place editing</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='alert alert-info'>
                        <a class='close' data-dismiss='alert' href='#'>&times;</a>
                        <strong>Hey there!</strong>
                        Try to click on dashed links in table below and see what it can do!
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-content'>
                                <div class='pull-left'>
                                    <label class='checkbox' style='margin-top: 5px'>
                                        <input id='inplaceediting-autoopen' type='checkbox'/>
                                        Auto-open next field after submit
                                    </label>
                                </div>
                                <div class='pull-right'>
                                    <button class='btn btn-primary' id='inplaceediting-enable'>Enable / Disable</button>
                                </div>
                                <div class='clearfix'></div>
                                <table class='table table-bordered table-striped' id='inplaceediting-user'
                                       style='margin-top: 20px'>
                                    <tbody>
                                    <tr>
                                        <td style='width:15%'>Username</td>
                                        <td style='width:50%'>
                                            <a class='editable editable-click' data-original-title='Enter username'
                                               data-pk='1' data-type='text' href='#' id='inplaceediting-username'>superuser</a>
                                        </td>
                                        <td style='width:35%'>
                                            <span class='muted'>Simple text field</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>First name</td>
                                        <td>
                                            <a class='editable editable-click editable-empty'
                                               data-original-title='Enter your firstname' data-pk='1'
                                               data-placeholder='Required' data-placement='right' data-type='text'
                                               href='#' id='inplaceediting-firstname'>Empty</a>
                                        </td>
                                        <td>
                                            <span class='muted'>Required text field, originally empty</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Sex</td>
                                        <td>
                                            <a class='editable editable-click' data-original-title='Select sex'
                                               data-pk='1' data-type='select' data-value='' href='#'
                                               id='inplaceediting-sex' style='color: gray;'>not selected</a>
                                        </td>
                                        <td>
                                            <span class='muted'>Select, loaded from js array. Custom display</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Group</td>
                                        <td>
                                            <a class='editable editable-click' data-original-title='Select group'
                                               data-pk='1' data-source='/groups' data-type='select' data-value='5'
                                               href='#' id='inplaceediting-group'>Admin</a>
                                        </td>
                                        <td>
              <span class='muted'>
                Select, loaded from server.
                <strong>No buttons</strong>
                mode
              </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Status</td>
                                        <td>
                                            <a class='editable editable-click' data-original-title='Select status'
                                               data-pk='1' data-source='/status' data-type='select' data-value='0'
                                               href='#' id='inplaceediting-status'>Active</a>
                                        </td>
                                        <td>
                                            <span class='muted'>Error when loading list items</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Plan vacation?</td>
                                        <td>
                                            <a class='editable editable-click'
                                               data-original-title='When you want vacation to start?' data-pk='1'
                                               data-placement='right' data-type='date' data-viewformat='dd.mm.yyyy'
                                               href='#' id='inplaceediting-vacation'>25.02.2013</a>
                                        </td>
                                        <td>
                                            <span class='muted'>Datepicker</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Date of birth</td>
                                        <td>
                                            <a class='editable editable-click' data-format='YYYY-MM-DD'
                                               data-original-title='Select Date of birth' data-pk='1'
                                               data-template='D / MMM / YYYY' data-type='combodate'
                                               data-value='1984-05-15' data-viewformat='DD/MM/YYYY' href='#'
                                               id='inplaceediting-dob'>15/05/1984</a>
                                        </td>
                                        <td>
                                            <span class='muted'>Date field (combodate)</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Setup event</td>
                                        <td>
                                            <a class='editable editable-click editable-empty'
                                               data-format='YYYY-MM-DD HH:mm'
                                               data-original-title='Setup event date and time' data-pk='1'
                                               data-template='D MMM YYYY  HH:mm' data-type='combodate'
                                               data-viewformat='MMM D, YYYY, HH:mm' href='#' id='inplaceediting-event'>Empty</a>
                                        </td>
                                        <td>
                                            <span class='muted'>Datetime field (combodate)</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Comments</td>
                                        <td>
                                            <a class='editable editable-click' data-original-title='Enter comments'
                                               data-pk='1' data-placeholder='Your comments here...' data-type='textarea'
                                               href='#' id='inplaceediting-comments'>
                                                awesome<br/>user!
                                            </a>
                                        </td>
                                        <td>
              <span class='muted'>
                Textarea. Buttons below. Submit by
                <i>ctrl+enter</i>
              </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Type State</td>
                                        <td>
                                            <a class='editable editable-click editable-empty'
                                               data-original-title='Start typing State..' data-pk='1'
                                               data-placement='right' data-type='typeahead' href='#'
                                               id='inplaceediting-state'>Empty</a>
                                        </td>
                                        <td>
                                            <span class='muted'>Bootstrap typeahead</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Fresh fruits</td>
                                        <td>
                                            <a class='editable editable-click' data-original-title='Select fruits'
                                               data-type='checklist' data-value='2,3' href='#'
                                               id='inplaceediting-fruits'>
                                                peach<br/>apple
                                            </a>
                                        </td>
                                        <td>
                                            <span class='muted'>Checklist</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Tags</td>
                                        <td>
                                            <a class='editable editable-click' data-original-title='Enter tags'
                                               data-pk='1' data-type='select2' href='#' id='inplaceediting-tags'>html,
                                                javascript</a>
                                        </td>
                                        <td>
                                            <span class='muted'>Select2 (tags mode)</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Country</td>
                                        <td>
                                            <a class='editable editable-click' data-original-title='Select country'
                                               data-pk='1' data-type='select2' data-value='BS' href='#'
                                               id='inplaceediting-country'>Bahamas</a>
                                        </td>
                                        <td>
                                            <span class='muted'>Select2 (dropdown mode)</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Notes</td>
                                        <td>
                                            <div class='editable' data-original-title='Enter notes' data-pk='1'
                                                 data-toggle='manual' data-type='wysihtml5' id='inplaceediting-note'
                                                 tabindex='-1'>
                                                <h3>WYSIWYG</h3>
                                                WYSIWYG means
                                                <i>What You See Is What You Get</i>.
                                                <br/>
                                                But may also refer to:
                                                <ul>
                                                    <li>WYSIWYG (album), a 2000 album by Chumbawamba</li>
                                                    <li>"Whatcha See is Whatcha Get", a 1971 song by The Dramatics</li>
                                                    <li>WYSIWYG Film Festival, an annual Christian film festival</li>
                                                </ul>
                                                <i>Source:</i>
                                                <a href='http://en.wikipedia.org/wiki/WYSIWYG_%28disambiguation%29'>wikipedia.org</a>
                                            </div>
                                        </td>
                                        <td>
                                            <a href='#' id='inplaceediting-pencil'>
                                                <i class='icon-pencil'></i>
                                                [edit]
                                            </a>
                                            <br/>
                                            <span class='muted'>
                wysihtml5<br/>Toggle by another element
              </span>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <hr class='hr-normal'/>
                                <div class='alert alert-info'>
                                    <a class='close' data-dismiss='alert' href='#'>&times;</a>
                                    All AJAX request you made in this example are logged into this field.
                                </div>
                                <textarea class='input-block-level' id='inplaceediting-console' rows='10'></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>