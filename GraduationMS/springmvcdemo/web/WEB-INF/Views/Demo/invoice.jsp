<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insertDefinition name="subPage.definition">
    <tiles:putAttribute name="title" value="example index.jsp"/>
    <tiles:putAttribute name="body">
        <div class='container-fluid'>
            <div class='row-fluid' id='content-wrapper'>
                <div class='span12'>
                    <div class='page-header'>
                        <h3 class='pull-left'>
                            <i class='icon-money'></i>
                            <span>Invoice</span>
                            <span class='muted'>#001</span>
                        </h3>
                        <div class='pull-right'>
                            <div class='btn-group'>
                                <a href="#" class="btn"><i class='icon-print'></i>
                                    Print
                                </a>
                                <a href="#" class="btn btn-success"><i class='icon-ok'></i>
                                    Mark as paid
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid invoice'>
                        <div class='span12 box'>
                            <div class='box-content box-double-padding'>
                                <div class='row-fluid'>
                                    <div class='invoice-header'>
                                        <div class='invoice-title'>
                                            Flatty
                                            <span class='muted'>Inc.</span>
                                        </div>
                                        <div class='invoice-number'>
                                            <span class='invoice-name'>Invoice</span>
                                            <span class='invoice-no'>#001</span>
                                        </div>
                                    </div>
                                </div>
                                <div class='row-fluid'>
                                    <div class='span4 seller'>
                                        <div class='lead text-contrast'>From</div>
                                        <i class='icon-globe'></i>
                                        <address>
                                            <strong>John Doe</strong>
                                            <br/>
                                            Long street 123
                                            <br/>
                                            Some city
                                            <br/>
                                            Country
                                            <br/>
                                            <br/>
                                            <small><a href="mailto:john@doe.com">john@doe.com</a></small>
                                            <br/>
                                            <small>(101) 123456-111</small>
                                        </address>
                                    </div>
                                    <div class='span4 buyer'>
                                        <div class='lead text-contrast'>To</div>
                                        <i class='icon-globe'></i>
                                        <address>
                                            <strong>Doe Jane</strong>
                                            <br/>
                                            Short street 456
                                            <br/>
                                            Some village
                                            <br/>
                                            Country
                                            <br/>
                                            <br/>
                                            <small><a href="mailto:jane@doe.com">jane@doe.com</a></small>
                                            <br/>
                                            <small>(101) 123456-111</small>
                                        </address>
                                    </div>
                                    <div class='span4 info'>
                                        <div class='lead muted'>Info</div>
                                        Invoice date:
                                        <strong>12/09/2013</strong>
                                        <br/>
                                        Bank account:
                                        <strong>123 456 789 123</strong>
                                    </div>
                                </div>
                                <div class='row-fluid'>
                                    <div class='span12'>
                                        <div class='responsive-table'>
                                            <div class='scrollable-area'>
                                                <table class='table table-striped table-hover table-bordered'>
                                                    <thead>
                                                    <tr>
                                                        <th>Code</th>
                                                        <th>Item</th>
                                                        <th>
                                                            <div class='text-center'>Qty</div>
                                                        </th>
                                                        <th>
                                                            <div class='text-right'>Price</div>
                                                        </th>
                                                        <th>
                                                            <div class='text-right'>Price total</div>
                                                        </th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td>AO6</td>
                                                        <td>Et dolore nulla</td>
                                                        <td>
                                                            <div class='text-center'>3</div>
                                                        </td>
                                                        <td>
                                                            <div class='text-right'>$298.00</div>
                                                        </td>
                                                        <td>
                                                            <div class='text-right'>$894.00</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>AO1</td>
                                                        <td>Nulla ullam qui amet recusandae modi</td>
                                                        <td>
                                                            <div class='text-center'>1</div>
                                                        </td>
                                                        <td>
                                                            <div class='text-right'>$264.00</div>
                                                        </td>
                                                        <td>
                                                            <div class='text-right'>$264.00</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>AO6</td>
                                                        <td>Qui est molestiae in ut quis</td>
                                                        <td>
                                                            <div class='text-center'>3</div>
                                                        </td>
                                                        <td>
                                                            <div class='text-right'>$295.00</div>
                                                        </td>
                                                        <td>
                                                            <div class='text-right'>$885.00</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>AO12</td>
                                                        <td>Possimus</td>
                                                        <td>
                                                            <div class='text-center'>1</div>
                                                        </td>
                                                        <td>
                                                            <div class='text-right'>$265.00</div>
                                                        </td>
                                                        <td>
                                                            <div class='text-right'>$265.00</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>AO9</td>
                                                        <td>Ipsam molestias</td>
                                                        <td>
                                                            <div class='text-center'>1</div>
                                                        </td>
                                                        <td>
                                                            <div class='text-right'>$419.00</div>
                                                        </td>
                                                        <td>
                                                            <div class='text-right'>$419.00</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>AO13</td>
                                                        <td>Suscipit</td>
                                                        <td>
                                                            <div class='text-center'>2</div>
                                                        </td>
                                                        <td>
                                                            <div class='text-right'>$444.00</div>
                                                        </td>
                                                        <td>
                                                            <div class='text-right'>$888.00</div>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr class='hr-normal'/>
                                <div class='row-fluid'>
                                    <div class='span12'>
                                        <div class='text-right text-contrast subtotal'>
                                            $3,615.00
                                        </div>
                                    </div>
                                </div>
                                <div class='row-fluid'>
                                    <div class='span12'>
                                        <div class='well comment'>
                                            Aspernatur quas voluptatem nostrum beatae tenetur maiores.
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