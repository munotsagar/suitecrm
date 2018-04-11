<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.

 * SuiteCRM is an extension to SugarCRM Community Edition developed by Salesagility Ltd.
 * Copyright (C) 2011 - 2014 Salesagility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for  technical reasons, the Appropriate Legal Notices must
 * display the words  "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 ********************************************************************************/


class AOS_InvoicesViewEdit extends ViewEdit
{
 	public function __construct()
 	{
 		parent::__construct();
 		//$this->useForSubpanel = true;
 		//$this->useModuleQuickCreateTemplate = true;
 	}


    function AOS_InvoicesViewEdit(){
        parent::ViewEdit();
    }

    function display() {
        //echo $this->bean->id;exit;;
        global $db;


        /**
         * Get Invoice Number
         */

        $resultInvNum = $db->query("select * from aos_invoices inner join aos_invoices_cstm on aos_invoices.id=aos_invoices_cstm.id_c where aos_invoices.deleted = '0' ORDER BY aos_invoices.date_entered DESC");

        $num = $resultInvNum->num_rows;

        if($num > 0) {

            $rowInvNum = $db->fetchByAssoc($resultInvNum);

            $invoice_number = $rowInvNum['invoice_number_c'];

            //echo $customer_number;exit;

            if($invoice_number > 0) {
                $invoice_number = $invoice_number + 7;

            } else {
                $invoice_number = 5001;
            }
        }
        //echo $invoice_number;exit;
        /**
         * Invoice number code end here
         */

        /**
         * Make payment detail line edit view code
         */

        $result = $db->query("select * from atomi_invoice_payment_details inner join atomi_invoice_payment_details_cstm on atomi_invoice_payment_details.id=atomi_invoice_payment_details_cstm.id_c where atomi_invoice_payment_details_cstm.aos_invoices_id_c = '".$this->bean->id."'");

        $numRows = $result->num_rows;

        $final_outstanding_balance_c = ($this->bean->final_outstanding_balance_c)
            ?$this->bean->final_outstanding_balance_c:'0.00';

        $str = "";
        $str.='<div class="col-xs-12 col-sm-6 edit-view-row-item"><table id="customFields" cellspacing="5" cellpadding="5" width="900px"><tr><th>Payment Type</th><th>Amount</th><th>Payment Date</th><th>Transaction Number</th></tr>';
        if($numRows > 0)
        {
            $i=0;

            while($row = $db->fetchByAssoc($result)) {
                $paymenttype_c = $row['paymenttype_c'];
                $paymentamount_c = $row['paymentamount_c'];

                $paymentdate_c_data = explode("-", $row['paymentdate_c']);
                $paymentdate_c = $paymentdate_c_data[1]."/".$paymentdate_c_data[2]."/".$paymentdate_c_data[0];



                $transactionnumber_c = $row['transactionnumber_c'];
                //$paymenttype_c = $row['paymenttype_c'];

                $selected_payment_in_cash_or_check = "";
                $selected_payment_in_credit_card = "";
                $selected_payment_in_wire_transferred = "";

                if($paymenttype_c == "payment_in_cash_or_check") {
                    $selected_payment_in_cash_or_check = "selected";
                }
                if($paymenttype_c == "payment_in_credit_card") {
                    $selected_payment_in_credit_card = "selected";
                }
                if($paymenttype_c == "payment_in_wire_transferred") {
                    $selected_payment_in_wire_transferred = "selected";
                }
                $paymentDateId = "paymentDateId".$i;
                $quote_to_date_trigger = "quote_to_date_trigger".$i;
                $str.='<tr valign="top"><td  valign="middle"><select class="selectCls" name="paymentType[]" onchange="addPaymentDetails()"><option '.$selected_payment_in_cash_or_check.' value="payment_in_cash_or_check">Payment In Cash Or Check</option><option '.$selected_payment_in_credit_card.' value="payment_in_credit_card">Payment In Credit Card</option><option '.$selected_payment_in_wire_transferred.' value="payment_in_wire_transferred">Payment In Wire Transferred</option></select></td><td valign="middle"><input type="text" class="inputCls" name="paymentAmount[]" value="'.number_format($paymentamount_c,2).'" placeholder="Payment Value" onblur="addPaymentDetails()"></td><td><span class="dateTime"><input type="text" id="'.$paymentDateId.'" name="paymentDate[]" value="'.$paymentdate_c.'" placeholder="MM/DD/YYYY"><img src="themes/SuiteP/images/jscalendar.gif?v=H9di8cnFB2Y4oEmEhsqsng" alt="Enter Date" style="position:relative; top:6px" id="'.$quote_to_date_trigger.'" border="0"></span></td><td><input type="text" name="transactionNumber[]" value="'.$transactionnumber_c.'" placeholder="Transaction Number"></td>';
                $str.='<script type="text/javascript">Calendar.setup ({ inputField : "'.$paymentDateId.'", form : "EditView", ifFormat : "%m/%d/%Y %H:%M", daFormat : "%m/%d/%Y %H:%M", button : "'.$quote_to_date_trigger.'", singleClick : true, dateStr : "", startWeekday: 0, step : 1, weekNumbers:false });</\' + \'script>';
                if($i == 0) {
                    $str.='<td valign="middle"><a href="javascript:void(0);" class="addCF">Add</a></td>';
                } else {
                    $str.='<td valign="middle"><a href="javascript:void(0);" class="remCF">Remove</a></td>';
                }

                $str.='</tr>';

                $i++;
            }

        } else {

            $paymentDateId = "paymentDateId0";
            $quote_to_date_trigger = "quote_to_date_trigger0";

            //echo "I am Here ....";exit;
            $str.='<tr valign="top"><td  valign="middle"><select class="selectCls" name="paymentType[]" nchange="addPaymentDetails()"><option value="payment_in_cash_or_check">Payment In Cash Or Check</option><option value="payment_in_credit_card">Payment In Credit Card</option><option value="payment_in_wire_transferred">Payment In Wire Transferred</option></select></td><td valign="middle"><input type="text" class="inputCls" name="paymentAmount[]" value="0.00" placeholder="Payment Value" onblur="addPaymentDetails()"></td><td><span class="dateTime"><input type="text" id="'.$paymentDateId.'" name="paymentDate[]" value="'.$paymentdate_c.'" placeholder="MM/DD/YYYY"><img src="themes/SuiteP/images/jscalendar.gif?v=H9di8cnFB2Y4oEmEhsqsng" alt="Enter Date" style="position:relative; top:6px" id="'.$quote_to_date_trigger.'" border="0"></span></td><td><input type="text" name="transactionNumber[]" value="" placeholder="Transaction Number"></td>';

            $str.='<script type="text/javascript">Calendar.setup ({ inputField : "'.$paymentDateId.'", form : "EditView", ifFormat : "%m/%d/%Y %H:%M", daFormat : "%m/%d/%Y %H:%M", button : "'.$quote_to_date_trigger.'", singleClick : true, dateStr : "", startWeekday: 0, step : 1, weekNumbers:false });</\' + \'script>';
            //if($i == 0) {
                $str.='<td valign="middle"><a href="javascript:void(0);" class="addCF">Add</a></td>';
            /*} else {
                $str.='<td valign="middle"><a href="javascript:void(0);" class="remCF">Remove</a></td>';
            }*/

            $str.='</tr>';

        }

        //echo $str;exit;

        $str.= '</table></div><div class="clear"></div><div class="col-xs-12 col-sm-6 edit-view-row-item"><table width="600px"><tbody><tr><th>Final Outstanding Balance Due : </th><td align="center">&nbsp;<input class="code" value="0.00" name="final_outstanding_balance_c" id="final_outstanding_balance_c"></td></tr></tbody></table></div>';

        /**
         * Make payment detail line edit view code end here
         */

        ?>
        <script type="text/javascript" src="include/javascript/calendar.js"></script>
        <input type="hidden" name="invoiceId" id="invoiceId" value="<?php echo $this->bean->id;?>">
        <input type="hidden" name="final_outstanding_balance_cID" id="final_outstanding_balance_cID" value="<?php echo $final_outstanding_balance_c;?>">
        <input type="hidden" name="invoice_numberID" id="invoice_numberID" value="<?php echo $invoice_number;?>">
     <script>
        $(document).ready(function () {
            var invoiceId = $("#invoiceId").val();
            var final_outstanding_balance_cID = $("#final_outstanding_balance_cID").val();
            //alert(final_outstanding_balance_cID);
            /*$("#detailpanel_3").append('<div class="col-xs-12 col-sm-6 ' +
                'edit-view-row-item"><table id="customFields" cellspacing="5" cellpadding="5" width="600px"><tr><th>Payment Type</th><th>Amount</th><th>Payment Date</th><th>Transaction Number</th></tr>');*/

            var invoice_numberID = $("#invoice_numberID").val();

            $("#invoice_number_c").val(invoice_numberID);

            if(invoiceId=="") {
                var uniqueId = uniqId();
                //alert(invoiceId);
                $("#detailpanel_3").append('<div class="col-xs-12 col-sm-6 ' +
                    'edit-view-row-item"><table id="customFields" cellspacing="5" cellpadding="5" width="900px"><tr><th>Payment Type</th><th>Amount</th><th>Payment Date</th><th>Transaction Number</th></tr><tr valign="top"><td  valign="middle"><select class="selectCls" name="paymentType[]" onchange="addPaymentDetails()"><option ' +
                    'value="payment_in_cash_or_check">Payment In Cash Or Check</option><option ' +
                    'value="payment_in_credit_card">Payment In Credit Card</option><option value="payment_in_wire_transferred">Payment In Wire Transferred</option></select></td> &nbsp;' +
                    '<td  ' +
                    'valign="middle"><input type="text" class="inputCls" name="paymentAmount[]" ' +
                    'value="0.00" placeholder="Payment Value" onblur="addPaymentDetails()"></td><td><span class="dateTime"><input type="text" id="paymentDate'+uniqueId+'" name="paymentDate[]" ' +
                    'value="" placeholder="MM/DD/YYYY"><img src="themes/SuiteP/images/jscalendar.gif?v=H9di8cnFB2Y4oEmEhsqsng" alt="Enter Date" style="position:relative; top:6px" id="quote_to_date_trigger'+uniqueId+'" border="0"></span></td><td><input type="text" ' + 'name="transactionNumber[]" ' + 'value="" placeholder="Transaction Number"></td> <td ' + 'valign="middle"> &nbsp;<a href="javascript:void(0);" class="addCF">Add</a></td></tr></table></div><div class="clear"></div><div class="col-xs-12 col-sm-6 ' +
                    'edit-view-row-item"><table width="600px"><tbody><tr><th>Final Outstanding Balance Due : </th><td align="center">&nbsp;<input class="code" value="0.00" name="final_outstanding_balance_c" ' + 'id="final_outstanding_balance_c"></td></tr></tbody></table></div>');

                $('<script type="text/javascript">Calendar.setup ({ inputField : "paymentDate'+uniqueId+'", form : "EditView", ifFormat : "%m/%d/%Y %H:%M", daFormat : "%m/%d/%Y %H:%M", button : "quote_to_date_trigger'+uniqueId+'", singleClick : true, dateStr : "", startWeekday: 0, step : 1, weekNumbers:false });</' + 'script>').appendTo($("#detailpanel_3"));

            } else {
                $("#detailpanel_3").append('<?php echo $str;?>');
                if(final_outstanding_balance_cID) {
                    set_value('final_outstanding_balance_c', final_outstanding_balance_cID);
                }

            }

            /*$('#detailpanel_3').append('</table></div><div class="clear"></div><div class="col-xs-12 col-sm-6 ' +
                'edit-view-row-item"><table width="600px"><tbody><tr><th>Final Outstanding Balance Due : </th><td align="center">&nbsp;<input class="code" value="0.00" name="final_outstanding_balance_c" ' +
                'id="final_outstanding_balance_c"></td></tr></tbody></table></div>');*/
            if($(".group_name").length > 0) {
                $("#addGroup").hide();
            }
            $("#addGroup").on("click", function () {
                $(this).hide();
            });


            $(".addCF").on("click", function(){
                var uniqueId = uniqId();
                $("#customFields").append('<tr valign="top"><td  valign="middle"><select class="selectCls" name="paymentType[]" onchange="addPaymentDetails()"><option ' +
                    'value="payment_in_cash_or_check">Payment In Cash Or Check</option><option ' +
                    'value="payment_in_credit_card">Payment In Credit Card</option><option value="payment_in_wire_transferred">Payment In Wire Transferred</option></select></td> &nbsp;' +
                    '<td  ' +
                    'valign="middle"><input type="text" class="inputCls" name="paymentAmount[]" ' +
                    'value="0.00" placeholder="Payment Value" onblur="addPaymentDetails()"></td><td><span class="dateTime"><input type="text" id="paymentDate'+uniqueId+'" name="paymentDate[]" ' +
                    'value="" placeholder="MM/DD/YYYY"><img src="themes/SuiteP/images/jscalendar.gif?v=H9di8cnFB2Y4oEmEhsqsng" alt="Enter Date" style="position:relative; top:6px" id="quote_to_date_trigger'+uniqueId+'" border="0"></span></td><td><input type="text" name="transactionNumber[]" value="" placeholder="Transaction Number"></td><td valign="middle"> &nbsp;<a href="javascript:void(0);" class="remCF">Remove</a></td></tr>');


                $('<script type="text/javascript">Calendar.setup ({ inputField : "paymentDate'+uniqueId+'", form : "EditView", ifFormat : "%m/%d/%Y %H:%M", daFormat : "%m/%d/%Y %H:%M", button : "quote_to_date_trigger'+uniqueId+'", singleClick : true, dateStr : "", startWeekday: 0, step : 1, weekNumbers:false });</' + 'script>').appendTo($("#customFields"));

            });
            $("#customFields").on('click','.remCF',function(){
                $(this).parent().parent().remove();
                addPaymentDetails();
            });

            $("#credit_c").on("blur", function () {
                addPaymentDetails();
            });

            $("#invoice_number_c").on('blur', function () {
                //alert("I am Here....");
                var data = "invoice_number_c="+$(this).val();
                $.ajax({
                    url: "?entryPoint=checkInvoiceExists",
                    data:data,
                    method:'POST',
                    success: function(result){
                        if(result == "exists") {
                            alert("Invoice number already exists into database!");
                            return false;
                        }
                    }
                });

            });


            /*$("#SAVE").on('click', function () {
                //alert("I am Here....");
                var data = "invoice_number_c="+$("#invoice_number_c").val();
                $.ajax({
                    url: "?entryPoint=checkInvoiceExists",
                    data:data,
                    method:'POST',
                    success: function(result){
                        if(result == "exists") {
                            alert("Invoice number already exists into database!");
                            return false;
                        }
                    }
                });

            });*/


        })

        function uniqId() {
            return Math.round(new Date().getTime() + (Math.random() * 100));
        }

        function addPaymentDetails()
        {
            var credit_c = get_value('credit_c');
            var payment_in_cash_cheque_c = get_value('payment_in_cash_cheque_c');
            var final_outstanding_balance_c = (payment_in_cash_cheque_c-credit_c);


            $.each($(".selectCls"), function(index){
                //$( ".selectCls" ).map(function( index ) {
                console.log($('.inputCls:eq('+index+')').val());
                console.log($('.selectCls:eq('+index+') option:selected').val());
                if($('.selectCls:eq('+index+') option:selected').val() == "payment_in_credit_card" && ($('.inputCls:eq('+index+')').val()!= 0.00 && $('.inputCls:eq('+index+')').val()!="" && $('.inputCls:eq('+index+')').val()!=NaN)) {
                    //alert("Payment In Credit Card");
                    var cashOrCredit = ($('.inputCls:eq('+index+')').val() * 5) / 100;
                    console.log("Payment In Credit Card");
                    console.log(cashOrCredit);
                    final_outstanding_balance_c = final_outstanding_balance_c + cashOrCredit;
                    //final_outstanding_balance_c = final_outstanding_balance_c - $('.inputCls:eq('+index+')').val();
                } else if($('.selectCls:eq('+index+') option:selected').val() == "payment_in_wire_transferred" && ($('.inputCls:eq('+index+')').val()!= 0.00 && $('.inputCls:eq('+index+')').val()!="" && $('.inputCls:eq('+index+')').val()!=NaN)) {
                    //alert("Payment In Wire Transferred");
                    console.log("Payment In Wire Transferred : " + final_outstanding_balance_c);
                    final_outstanding_balance_c = (final_outstanding_balance_c + 15);
                    console.log("Payment In Wire Transferred");
                    console.log(final_outstanding_balance_c);

                    //final_outstanding_balance_c = final_outstanding_balance_c - $('.inputCls:eq('+index+')').val();
                }

                if ($('.inputCls:eq('+index+')').val()!= 0.00 && $('.inputCls:eq('+index+')').val()!="" && $('.inputCls:eq('+index+')').val()!=NaN) {
                    //alert("Cash");
                    console.log("final_outstanding_balance_c : "+$('.inputCls:eq('+index+')').val());
                    final_outstanding_balance_c = final_outstanding_balance_c - $('.inputCls:eq('+index+')').val();
                }
            });

            set_value('final_outstanding_balance_c', final_outstanding_balance_c);
        }


     </script>
        <?php
        parent::display();
    }

}