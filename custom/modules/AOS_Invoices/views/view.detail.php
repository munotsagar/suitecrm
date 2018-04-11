<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once('include/MVC/View/views/view.detail.php');

class AOS_InvoicesViewDetail extends ViewDetail {

    function __construct(){
        parent::__construct();
    }

    /**
     * @deprecated deprecated since version 7.6, PHP4 Style Constructors are deprecated and will be remove in 7.8, please update your code, use __construct instead
     */
    function AOS_InvoicesViewDetail(){
        $deprecatedMessage = 'PHP4 Style Constructors are deprecated and will be remove in 7.8, please update your code';
        if(isset($GLOBALS['log'])) {
            $GLOBALS['log']->deprecated($deprecatedMessage);
        }
        else {
            trigger_error($deprecatedMessage, E_USER_DEPRECATED);
        }
        self::__construct();
    }


    function display(){
        //echo "Sagar Here ...top-panel-4";
        /*****New Code Start Here ******/
        global $db;

        $result = $db->query("select * from atomi_invoice_payment_details inner join atomi_invoice_payment_details_cstm on atomi_invoice_payment_details.id=atomi_invoice_payment_details_cstm.id_c where atomi_invoice_payment_details_cstm.aos_invoices_id_c = '".$this->bean->id."'");

        $numRows = $result->num_rows;

        $str = "";
        $str.='<div class="col-xs-12 col-sm-6 edit-view-row-item"><table id="customFields" cellspacing="5" cellpadding="5" width="600px"><tr><th>Payment Type</th><th>Amount</th><th>Payment Date</th><th>Transaction Number</th></tr>';
        if($numRows > 0)
        {
            $payTypeArray = ["payment_in_cash_or_check"=>"Payment In Cash Or Check", "payment_in_credit_card"=>"Payment In Credit Card", "payment_in_wire_transferred"=> "Payment In Wire Transferred"];

            $i=0;

            while($row = $db->fetchByAssoc($result)) {
                $paymenttype_c = $row['paymenttype_c'];
                $paymentamount_c = $row['paymentamount_c'];

                $paymentdate_c_data = explode("-", $row['paymentdate_c']);
                $paymentdate_c = $paymentdate_c_data[1]."/".$paymentdate_c_data[2]."/".$paymentdate_c_data[0];
                $transactionnumber_c = $row['transactionnumber_c'];

                $str.='<tr valign="top"><td valign="middle">'.$payTypeArray[$paymenttype_c].'</td><td valign="middle">'.number_format($paymentamount_c,2).'</td><td>'.$paymentdate_c.'</td><td>'.$transactionnumber_c.'</td>';

                $str.='</tr>';

                $i++;
            }


        }
        $str.= '</table></div>';


        /*****New Code End Here ******/
        ?>
        <script>
            $(document).ready(function () {
                    $("#top-panel-4 .tab-content").append('<?php echo $str;?>');
                }
            );
            </script>
        <?php
        $this->populateInvoiceTemplates();
        $this->displayPopupHtml();
        parent::display();
    }

    function populateInvoiceTemplates(){
        global $app_list_strings;

        $sql = "SELECT id, name FROM aos_pdf_templates WHERE deleted = 0 AND type='AOS_Invoices' AND active = 1";

        $res = $this->bean->db->query($sql);
        $app_list_strings['template_ddown_c_list'] = array();
        while($row = $this->bean->db->fetchByAssoc($res)){
            $app_list_strings['template_ddown_c_list'][$row['id']] = $row['name'];
        }
    }

    function displayPopupHtml(){
        global $app_list_strings,$app_strings, $mod_strings;
        $templates = array_keys($app_list_strings['template_ddown_c_list']);
        if($templates){

            echo '	<div id="popupDiv_ara" style="display:none;position:fixed;top: 39%; left: 41%;opacity:1;z-index:9999;background:#FFFFFF;">
				<form id="popupForm" action="index.php?entryPoint=generatePdf" method="post">
 				<table style="border: #000 solid 2px;padding-left:40px;padding-right:40px;padding-top:10px;padding-bottom:10px;font-size:110%;" >
					<tr height="20">
						<td colspan="2">
						<b>'.$app_strings['LBL_SELECT_TEMPLATE'].':-</b>
						</td>
					</tr>';
            foreach($templates as $template){
                $template = str_replace('^','',$template);
                $js = "document.getElementById('popupDivBack_ara').style.display='none';document.getElementById('popupDiv_ara').style.display='none';var form=document.getElementById('popupForm');if(form!=null){form.templateID.value='".$template."';form.submit();}else{alert('Error!');}";
                echo '<tr height="20">
				<td width="17" valign="center"><a href="#" onclick="'.$js.'"><img src="themes/default/images/txt_image_inline.gif" width="16" height="16" /></a></td>
				<td><b><a href="#" onclick="'.$js.'">'.$app_list_strings['template_ddown_c_list'][$template].'</a></b></td></tr>';
            }
            echo '		<input type="hidden" name="templateID" value="" />
				<input type="hidden" name="task" value="pdf" />
				<input type="hidden" name="module" value="'.$_REQUEST['module'].'" />
				<input type="hidden" name="uid" value="'.$this->bean->id.'" />
				</form>
				<tr style="height:10px;"><tr><tr><td colspan="2"><button style=" display: block;margin-left: auto;margin-right: auto" onclick="document.getElementById(\'popupDivBack_ara\').style.display=\'none\';document.getElementById(\'popupDiv_ara\').style.display=\'none\';return false;">Cancel</button></td></tr>
				</table>
				</div>
				<div id="popupDivBack_ara" onclick="this.style.display=\'none\';document.getElementById(\'popupDiv_ara\').style.display=\'none\';" style="top:0px;left:0px;position:fixed;height:100%;width:100%;background:#000000;opacity:0.5;display:none;vertical-align:middle;text-align:center;z-index:9998;">
				</div>
				<script>
					function showPopup(task){
						var form=document.getElementById(\'popupForm\');
						var ppd=document.getElementById(\'popupDivBack_ara\');
						var ppd2=document.getElementById(\'popupDiv_ara\');
						if('.count($templates).' == 1){
							form.task.value=task;
							form.templateID.value=\''.$template.'\';
							form.submit();
						}else if(form!=null && ppd!=null && ppd2!=null){
							ppd.style.display=\'block\';
							ppd2.style.display=\'block\';
							form.task.value=task;
						}else{
							alert(\'Error!\');
						}
					}
				</script>';
        }
        else{
            echo '<script>
				function showPopup(task){
				alert(\''.$mod_strings['LBL_NO_TEMPLATE'].'\');
				}
			</script>';
        }
    }
}
?>
