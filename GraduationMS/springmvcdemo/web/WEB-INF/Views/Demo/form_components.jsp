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
                            <span>Forms components</span>
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
                                <li class='active'>Form components</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class='row-fluid'>
                <div class='span8 box bordered-box blue-border'>
                    <div class='box-header blue-background'>
                        <div class='title'>
                            Select 2
                        </div>
                        <div class='actions'>
                            <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                            </a>
                            <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                            </a>
                        </div>
                    </div>
                    <div class='box-content'>
                        <div class='row-fluid'>
                            <div class='span6'>
                                <div class='row-fluid'>
                                    <strong>Classic select</strong>
                                    <select class='select2 input-block-level'>
                                        <optgroup label='Alaskan/Hawaiian Time Zone'>
                                            <option value='AK' />Alaska
                                            <option value='HI' />Hawaii
                                        </optgroup>
                                        <optgroup label='Pacific Time Zone'>
                                            <option value='CA' />California
                                            <option value='NV' />Nevada
                                            <option value='OR' />Oregon
                                            <option value='WA' />Washington
                                        </optgroup>
                                        <optgroup label='Mountain Time Zone'>
                                            <option value='AZ' />Arizona
                                            <option value='CO' />Colorado
                                            <option value='ID' />Idaho
                                            <option value='MT' />Montana
                                            <option value='NE' />Nebraska
                                            <option value='NM' />New Mexico
                                            <option value='ND' />North Dakota
                                            <option value='UT' />Utah
                                            <option value='WY' />Wyoming
                                        </optgroup>
                                        <optgroup label='Central Time Zone'>
                                            <option value='AL' />Alabama
                                            <option value='AR' />Arkansas
                                            <option value='IL' />Illinois
                                            <option value='IA' />Iowa
                                            <option value='KS' />Kansas
                                            <option value='KY' />Kentucky
                                            <option value='LA' />Louisiana
                                            <option value='MN' />Minnesota
                                            <option value='MS' />Mississippi
                                            <option value='MO' />Missouri
                                            <option value='OK' />Oklahoma
                                            <option value='SD' />South Dakota
                                            <option value='TX' />Texas
                                            <option value='TN' />Tennessee
                                            <option value='WI' />Wisconsin
                                        </optgroup>
                                        <optgroup label='Eastern Time Zone'>
                                            <option value='CT' />Connecticut
                                            <option value='DE' />Delaware
                                            <option value='FL' />Florida
                                            <option value='GA' />Georgia
                                            <option value='IN' />Indiana
                                            <option value='ME' />Maine
                                            <option value='MD' />Maryland
                                            <option value='MA' />Massachusetts
                                            <option value='MI' />Michigan
                                            <option value='NH' />New Hampshire
                                            <option value='NJ' />New Jersey
                                            <option value='NY' />New York
                                            <option value='NC' />North Carolina
                                            <option value='OH' />Ohio
                                            <option value='PA' />Pennsylvania
                                            <option value='RI' />Rhode Island
                                            <option value='SC' />South Carolina
                                            <option value='VT' />Vermont
                                            <option value='VA' />Virginia
                                            <option value='WV' />West Virginia
                                        </optgroup>
                                    </select>
                                </div>
                            </div>
                            <div class='span6'>
                                <div class='row-fluid'>
                                    <strong>Multiple select</strong>
                                    <select class='select2 input-block-level' multiple="" placeholder='Try typing some USA country name'>
                                        <optgroup label='Alaskan/Hawaiian Time Zone'>
                                            <option value='AK' />Alaska
                                            <option value='HI' />Hawaii
                                        </optgroup>
                                        <optgroup label='Pacific Time Zone'>
                                            <option value='CA' />California
                                            <option value='NV' />Nevada
                                            <option value='OR' />Oregon
                                            <option value='WA' />Washington
                                        </optgroup>
                                        <optgroup label='Mountain Time Zone'>
                                            <option value='AZ' />Arizona
                                            <option value='CO' />Colorado
                                            <option value='ID' />Idaho
                                            <option value='MT' />Montana
                                            <option value='NE' />Nebraska
                                            <option value='NM' />New Mexico
                                            <option value='ND' />North Dakota
                                            <option value='UT' />Utah
                                            <option value='WY' />Wyoming
                                        </optgroup>
                                        <optgroup label='Central Time Zone'>
                                            <option value='AL' />Alabama
                                            <option value='AR' />Arkansas
                                            <option value='IL' />Illinois
                                            <option value='IA' />Iowa
                                            <option value='KS' />Kansas
                                            <option value='KY' />Kentucky
                                            <option value='LA' />Louisiana
                                            <option value='MN' />Minnesota
                                            <option value='MS' />Mississippi
                                            <option value='MO' />Missouri
                                            <option value='OK' />Oklahoma
                                            <option value='SD' />South Dakota
                                            <option value='TX' />Texas
                                            <option value='TN' />Tennessee
                                            <option value='WI' />Wisconsin
                                        </optgroup>
                                        <optgroup label='Eastern Time Zone'>
                                            <option value='CT' />Connecticut
                                            <option value='DE' />Delaware
                                            <option value='FL' />Florida
                                            <option value='GA' />Georgia
                                            <option value='IN' />Indiana
                                            <option value='ME' />Maine
                                            <option value='MD' />Maryland
                                            <option value='MA' />Massachusetts
                                            <option value='MI' />Michigan
                                            <option value='NH' />New Hampshire
                                            <option value='NJ' />New Jersey
                                            <option value='NY' />New York
                                            <option value='NC' />North Carolina
                                            <option value='OH' />Ohio
                                            <option value='PA' />Pennsylvania
                                            <option value='RI' />Rhode Island
                                            <option value='SC' />South Carolina
                                            <option value='VT' />Vermont
                                            <option value='VA' />Virginia
                                            <option value='WV' />West Virginia
                                        </optgroup>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <hr class='hr-normal' />
                        <div class='row-fluid'>
                            <div class='span6'>
                                <div class='row-fluid'>
                                    <strong>With HTML in option</strong>
                                    <select class='input-block-level' id='select2-icon'>
                                        <option value='icon-heart' />icon-heart
                                        <option value='icon-home' />icon-home
                                        <option value='icon-resize-full' />icon-resize-full
                                    </select>
                                </div>
                            </div>
                            <div class='span6'>
                                <div class='row-fluid'>
                                    <strong>Tags</strong>
                                    <div class='input-block-level' id='select2-tags'></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='span4 box bordered-box blue-border box-nomargin'>
                    <div class='box-header green-background'>
                        <div class='title'>
                            Color pickers
                        </div>
                        <div class='actions'>
                            <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                            </a>
                            <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                            </a>
                        </div>
                    </div>
                    <div class='box-content'>
                        <div class='row-fluid'>
                            <strong>HEX</strong>
                            <input class='colorpicker-hex input-block-level' placeholder='Pick a color' style='margin-bottom: 0;' type='text' />
                        </div>
                        <hr class='hr-normal' />
                        <div class='row-fluid'>
                            <strong>RGB</strong>
                            <input class='colorpicker-rgb input-block-level' placeholder='Pick a color' style='margin-bottom: 0;' type='text' />
                        </div>
                    </div>
                </div>
            </div>
            <div class='group-header'>
                <div class='row-fluid'>
                    <div class='span6 offset3'>
                        <div class='text-center'>
                            <h2>Usefull features</h2>
                            <small class='muted'>Very userfull features for better user experience.</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class='row-fluid'>
                <div class='span4 box bordered-box blue-border box-nomargin'>
                    <div class='box-header red-background'>
                        <div class='title'>
                            Datetime pickers
                        </div>
                        <div class='actions'>
                            <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                            </a>
                            <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                            </a>
                        </div>
                    </div>
                    <div class='box-content'>
                        <div class='row-fluid'>
                            <strong>Daterangepicker</strong>
                            <div>
                                <div class='input-append'>
                                    <input class='input-medium daterange' placeholder='Select daterange' type='text' />
                                    <span class='add-on' id='daterange2'>
              <i class='icon-calendar'></i>
            </span>
                                </div>
                            </div>
                        </div>
                        <hr class='hr-normal' />
                        <div class='row-fluid'>
                            <strong>Datepicker</strong>
                            <div>
                                <div class='datepicker input-append' id='datepicker'>
                                    <input class='input-medium' data-format='yyyy-MM-dd' placeholder='Select datepicker' type='text' />
                                    <span class='add-on'>
              <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
            </span>
                                </div>
                            </div>
                        </div>
                        <hr class='hr-normal' />
                        <div class='row-fluid'>
                            <strong>Timepicker</strong>
                            <div>
                                <div class='timepicker input-append' id='timepicker'>
                                    <input class='input-medium' data-format='hh:mm:ss' placeholder='Select timepicker' type='text' />
                                    <span class='add-on'>
              <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
            </span>
                                </div>
                            </div>
                        </div>
                        <hr class='hr-normal' />
                        <div class='row-fluid'>
                            <strong>Datetimepicker</strong>
                            <div>
                                <div class='datetimepicker input-append' id='datetimepicker'>
                                    <input class='input-medium' data-format='MM/dd/yyyy HH:mm:ss PP' placeholder='Select timepicker' type='text' />
                                    <span class='add-on'>
              <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='span4 box box-nomargin'>
                    <div class='box-header orange-background'>
                        <div class='title'>Masked inputs</div>
                        <div class='actions'>
                            <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                            </a>
                            <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                            </a>
                        </div>
                    </div>
                    <div class='box-content'>
                        <strong>Phone (+999 999 999 999)</strong>
                        <input class='input-block-level' data-mask='+999 999 999 999' placeholder='+999 999 999 999' type='text' />
                        <hr class='hr-normal' />
                        <strong>Product key (a*-999-a999)</strong>
                        <input class='input-block-level' data-mask='a*-999-a999' placeholder='a*-999-a999' type='text' />
                        <hr class='hr-normal' />
                        <strong>Date of birth (99/99/9999)</strong>
                        <input class='input-block-level' data-mask='99/99/9999' placeholder='99/99/9999' type='text' />
                        <hr class='hr-normal' />
                        <strong>Hello</strong>
                        <input class='input-block-level' data-mask='aalla' placeholder='aalla' type='text' />
                    </div>
                </div>
                <div class='span4 box box-nomargin'>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-header blue-background'>
                                <div class='title'>Autosize textarea</div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content'>
                                <textarea class='autosize input-block-level' placeholder='Automatic height based on content' rows='2'></textarea>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-header purple-background'>
                                <div class='title'>Char counter</div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content'>
                                <textarea class='char-counter input-block-level' data-char-allowed='20' data-char-warning='10' placeholder='Type some words here...' rows='2'></textarea>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box' style='margin-bottom: 0;'>
                            <div class='box-header green-background'>
                                <div class='title'>Max length</div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content'>
                                <textarea class='char-max-length input-block-level' maxlength='5' placeholder='This field has limit of 5 chars' rows='2' style='margin-bottom: 0;'></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr class='hr-double' />
            <div class='row-fluid'>
                <div class='span12 box' style='margin-bottom:0'>
                    <div class='box-header blue-background'>
                        <div class='title'>Switch buttons</div>
                        <div class='actions'>
                            <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                            </a>
                            <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                            </a>
                        </div>
                    </div>
                    <div class='box-content'>
                        <div class='row-fluid'>
                            <div class='span6'>
                                <strong>Various sizes</strong>
                                <div>
                                    <div class='switch switch-large' data-off-label='<i class="icon-remove"></i>' data-on-label='<i class="icon-ok"></i>'>
                                        <input type='checkbox' />
                                    </div>
                                    <div class='switch' data-off-label='<i class="icon-remove"></i>' data-on-label='<i class="icon-ok"></i>'>
                                        <input checked='checked' type='checkbox' />
                                    </div>
                                    <div class='switch switch-small' data-off-label='<i class="icon-remove"></i>' data-on-label='<i class="icon-ok"></i>'>
                                        <input type='checkbox' />
                                    </div>
                                    <div class='switch switch-mini' data-off-label='<i class="icon-remove"></i>' data-on-label='<i class="icon-ok"></i>'>
                                        <input checked='checked' type='checkbox' />
                                    </div>
                                </div>
                            </div>
                            <div class='span6'>
                                <strong>Various colors</strong>
                                <div>
                                    <div class='switch' data-off-label='<i class="icon-remove"></i>' data-on-label='<i class="icon-ok"></i>' data-on='primary'>
                                        <input checked='checked' type='checkbox' />
                                    </div>
                                    <div class='switch' data-off-label='<i class="icon-remove"></i>' data-on-label='<i class="icon-ok"></i>' data-on='danger'>
                                        <input checked='checked' type='checkbox' />
                                    </div>
                                    <div class='switch' data-off-label='<i class="icon-remove"></i>' data-on-label='<i class="icon-ok"></i>' data-on='success'>
                                        <input checked='checked' type='checkbox' />
                                    </div>
                                    <div class='switch' data-off-label='<i class="icon-remove"></i>' data-on-label='<i class="icon-ok"></i>' data-on='warning'>
                                        <input checked='checked' type='checkbox' />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr class='hr-double' />
            <div class='row-fluid'>
                <div class='span12 box' style='margin-bottom:0'>
                    <div class='box-header purple-background'>
                        <div class='title'>Password strength</div>
                        <div class='actions'>
                            <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                            </a>
                            <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                            </a>
                        </div>
                    </div>
                    <div class='box-content'>
                        <strong>Type your password and see what happens</strong>
                        <br />
                        <input class='nakedpassword span5' placeholder='Your top secret password' type='password' />
                    </div>
                </div>
            </div>
            <hr class='hr-double' />
            <div class='row-fluid'>
                <div class='span6 box box-nomargin'>
                    <div class='box-header green-background'>
                        <div class='title'>Fileinput</div>
                        <div class='actions'>
                            <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                            </a>
                            <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                            </a>
                        </div>
                    </div>
                    <div class='box-content'>
                        <strong>Classic file input converted to more user friendly</strong>
                        <div>
                            <input title='Search for a file to add' type='file' />
                        </div>
                    </div>
                </div>
                <div class='span6 box'>
                    <div class='box-header red-background'>
                        <div class='title'>Mention</div>
                        <div class='actions'>
                            <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                            </a>
                            <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                            </a>
                        </div>
                    </div>
                    <div class='box-content'>
                        <strong>Mention (GitHub style)</strong>
                        <input class='input-block-level mention' placeholder='Try typing @jenna' style='margin-bottom: 0;' type='text' />
                    </div>
                </div>
            </div>
            <div class='group-header'>
                <div class='row-fluid'>
                    <div class='span6 offset3'>
                        <div class='text-center'>
                            <h2>WYSIWYG</h2>
                            <small class='muted'>What You See Is What You Get</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class='row-fluid'>
                <div class='span12 box'>
                    <div class='box-header purple-background'>
                        <div class='title'>WYSIWYG Editor</div>
                        <div class='actions'>
                            <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                            </a>
                            <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                            </a>
                        </div>
                    </div>
                    <div class='box-content'>
            <textarea class="span12 wysihtml5" cols="40" id="body_" name="body[]" placeholder="Some text here..." rows="10">
                &lt;h1&gt;Hello from Flatty!&lt;/h1&gt;</textarea>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</tiles:putAttribute>
</tiles:insertDefinition>