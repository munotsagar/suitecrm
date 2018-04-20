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


class AOS_QuotesViewEdit extends ViewEdit
{
 	public function __construct()
 	{
 		parent::__construct();
 		//$this->useForSubpanel = true;
 		//$this->useModuleQuickCreateTemplate = true;
 	}


    function AOS_QuotesViewEdit(){
        parent::ViewEdit();
    }

    function display() {
        //echo $this->bean->id;exit;;
        global $db;


        /**
         * Get Quote Id
         */

        $resultInvNum = $db->query("select * from aos_quotes inner join aos_quotes_cstm on aos_quotes.id=aos_quotes_cstm.id_c where aos_quotes.deleted = '0' ORDER BY aos_quotes.date_entered DESC");

        $num = $resultInvNum->num_rows;

        if($num > 0) {

            $rowInvNum = $db->fetchByAssoc($resultInvNum);

            $quote_id = $rowInvNum['quote_id_c'];

            //echo $customer_number;exit;

            if($quote_id > 0) {
                $quote_id = $quote_id + 7;

            } else {
                $quote_id = 3001;
            }
        } else {
                $quote_id = 3001;
            }
        //echo $invoice_number;exit;
        /**
         * Quote Id end here
         */

        ?>
        <!--<input type="hidden" name="invoiceId" id="invoiceId" value="<?php /*echo $this->bean->id;*/?>">-->
        <input type="hidden" name="quote_id_cID" id="quote_id_cID" value="<?php echo $quote_id;?>">
     <script>
        $(document).ready(function () {
            //var invoiceId = $("#quote_id_cId").val();

            var quote_id_cID = $("#quote_id_cID").val();
			
            $("#quote_id_c").val(quote_id_cID);

            $("#quote_id_c").on('blur', function () {
                //alert("I am Here....");
                var data = "quote_id_c="+$(this).val();
                $.ajax({
                    url: "?entryPoint=checkQuoteExists",
                    data:data,
                    method:'POST',
                    success: function(result){
                        if(result == "exists") {
                            alert("Quote Id already exists into database!");
                            return false;
                        }
                    }
                });

            });
        })
     </script>
        <?php
        parent::display();
    }

}