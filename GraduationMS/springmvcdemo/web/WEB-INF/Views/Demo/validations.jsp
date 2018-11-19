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
                                <h3 class='pull-left'>
                                    <i class='icon-ok'></i>
                                    <span>Validations</span>
                                </h3>
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
                                        <li class='active'>Validations</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-header blue-background'>
                                <div class='title'>Basic validations</div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content'>
                                <form class='form form-horizontal validate-form' style='margin-bottom: 0;'/>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_name'>Name</label>
                                    <div class='controls'>
                                        <input data-rule-minlength='2' data-rule-required='true' id='validation_name'
                                               name='validation_name' placeholder='Name' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_email'>E-mail</label>
                                    <div class='controls'>
                                        <input data-rule-email='true' data-rule-required='true' id='validation_email'
                                               name='validation_email' placeholder='E-mail' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_password'>Password</label>
                                    <div class='controls'>
                                        <input data-rule-minlength='6' data-rule-password='true'
                                               data-rule-required='true' id='validation_password'
                                               name='validation_password' placeholder='Password' type='password'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_password_confirmation'>Password
                                        confirmation</label>
                                    <div class='controls'>
                                        <input data-rule-equalto='#validation_password' data-rule-required='true'
                                               id='validation_password_confirmation'
                                               name='validation_password_confirmation'
                                               placeholder='Password confirmation' type='password'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_agree'>Agree TOS</label>
                                    <div class='controls'>
                                        <label class='checkbox'>
                                            <input data-rule-required='true' id='validation_agree'
                                                   name='validation_agree' type='checkbox' value=''/>
                                        </label>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_date'>Birthdate</label>
                                    <div class='controls'>
                                        <input data-mask='9999-99-99' data-rule-dateiso='true' data-rule-required='true'
                                               id='validation_date' name='validation_date' placeholder='YYYY-MM-DD'
                                               type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_select'>Select</label>
                                    <div class='controls'>
                                        <select data-rule-required='true' id='validation_select'
                                                name='validation_select'>
                                            <option/>
                                            <option/>
                                            1
                                            <option/>
                                            2
                                            <option/>
                                            3
                                        </select>
                                    </div>
                                </div>
                                <div class='form-actions' style='margin-bottom:0'>
                                    <button class='btn btn-primary' type='submit'>
                                        <i class='icon-save'></i>
                                        Test validation
                                    </button>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class='group-header'>
                        <div class='row-fluid'>
                            <div class='span6 offset3'>
                                <div class='text-center'>
                                    <h2>Custom methods</h2>
                                    <small class='muted'>You can easily add your own validation methods. These
                                        validations are pretty easy to extend.
                                    </small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-header green-background'>
                                <div class='title'>
                                    Custom validations
                                </div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content'>
                                <form class='form form-horizontal validate-form' style='margin-bottom: 0;'/>
                                <div class='control-group'>
                                    <div class='control-label'>
                                        <label for='validation_secret'>Secret</label>
                                        <small class='muted'>Psst, secret is "buga"</small>
                                    </div>
                                    <div class='controls'>
                                        <input data-rule-buga='true' data-rule-required='true' id='validation_secret'
                                               name='validation_secret' placeholder='Secret' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_numbers'>Numbers</label>
                                    <div class='controls'>
                                        <input data-rule-number='true' data-rule-required='true' id='validation_numbers'
                                               name='validation_numbers' placeholder='Numbers' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_ip'>IP</label>
                                    <div class='controls'>
                                        <input data-rule-ipv4='true' data-rule-required='true' id='validation_ip'
                                               name='vadation_ip' placeholder='IP' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <div class='control-label'>
                                        <label for='validation_url'>URL</label>
                                        <small class='muted'>http://</small>
                                    </div>
                                    <div class='controls'>
                                        <input data-rule-required='true' data-rule-url='true' id='validation_url'
                                               name='vadation_url' placeholder='URL' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <div class='control-label'>
                                        <label for='validation_phone'>US phone number</label>
                                        <small class='muted'>212-999-0983</small>
                                    </div>
                                    <div class='controls'>
                                        <input data-rule-phoneus='true' data-rule-required='true' id='validation_phone'
                                               name='vadation_phone_number' placeholder='US phone number' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <label class='control-label' for='validation_iban'>IBAN</label>
                                    <div class='controls'>
                                        <input data-rule-iban='true' data-rule-required='true' id='validation_iban'
                                               name='vadation_iban' placeholder='IBAN' type='text'/>
                                    </div>
                                </div>
                                <div class='control-group'>
                                    <div class='control-label'>
                                        <label for='validation_vin'>VIN</label>
                                        <small class='muted'>1M8GDM9AXKP042788</small>
                                    </div>
                                    <div class='controls'>
                                        <input data-rule-required='true' data-rule-vinus='true' id='validation_vin'
                                               name='vadation_vin' placeholder='VIN' type='text'/>
                                    </div>
                                </div>
                                <div class='form-actions' style='margin-bottom:0'>
                                    <button class='btn btn-primary' type='submit'>
                                        <i class='icon-save'></i>
                                        Test validation
                                    </button>
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