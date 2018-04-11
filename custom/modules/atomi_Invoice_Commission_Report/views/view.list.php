<?php

require_once('include/MVC/View/views/view.list.php');
class atomi_Invoice_Commission_ReportViewList extends ViewList {


    function listViewProcess()
    {
        /*$tplFile = 'custom/modules/atomi_Invoice_Commission_Report/ListView/ListViewGeneric.tpl';
        $this->lv->setup($this->seed, $tplFile, $this->where, $this->params);
        echo $this->lv->display();*/
    }

     function preDisplay(){

        parent::preDisplay();
    }

	function display() {
    parent::display();

        global $db;

    $resUser = $db->query("select * from users where deleted = '0'");
        $month = date("m");
        $year = date("Y");
        $date_today = getdate(mktime(0,0,0,$month,"01",$year));
    ?>
        <script type="text/javascript" src="include/javascript/calendar.js"></script>
        <form name="SearchView" action="index.php?action=index&module=atomi_Invoice_Commission_Report" id="SearchView" method="post">
        <table class="list view table-responsive">
            <tr>
                <td>From : </td>
                <td>
                    <span class="dateTime">
                        <input class="date_input" autocomplete="off" name="from_date" id="from_date" value="<?php echo $_REQUEST['from_date'];?>" title="" tabindex="0" size="11" maxlength="10" type="text">
                        <img src="themes/SuiteP/images/jscalendar.gif?v=H9di8cnFB2Y4oEmEhsqsng" alt="Enter Date" style="position:relative; top:6px" id="quote_from_date_trigger" border="0">
                    </span>
                    <script type="text/javascript">

                        Calendar.setup ({
                                inputField : "from_date",
                                form : "SearchView",
                                ifFormat : "%m/%d/%Y %H:%M",
                                daFormat : "%m/%d/%Y %H:%M",
                                button : "quote_from_date_trigger",
                                singleClick : true,
                                dateStr : "",
                                startWeekday: 0,
                                step : 1,
                                weekNumbers:false
                            }
                        );
                    </script>
                </td>
                <td>To : </td>
                <td><span class="dateTime">
                        <input class="date_input" autocomplete="off" name="to_date" id="to_date" value="<?php echo $_REQUEST['to_date'];?>" title="" tabindex="0" size="11" maxlength="10" type="text">
                        <img src="themes/SuiteP/images/jscalendar.gif?v=H9di8cnFB2Y4oEmEhsqsng" alt="Enter Date" style="position:relative; top:6px" id="quote_to_date_trigger" border="0">
                    </span>
                    <script type="text/javascript">

                        Calendar.setup ({
                                inputField : "to_date",
                                form : "SearchView",
                                ifFormat : "%m/%d/%Y %H:%M",
                                daFormat : "%m/%d/%Y %H:%M",
                                button : "quote_to_date_trigger",
                                singleClick : true,
                                dateStr : "",
                                startWeekday: 0,
                                step : 1,
                                weekNumbers:false
                            }
                        );
                    </script></td>
                <td><input type="submit" name="apply" value="Apply"></td>
            </tr>
        </table>
        </form>
    <table style="background-color:#778591;" class="list view table-responsive">
        <tr>
            <th class="hidden-xs">User Name</th>
            <th class="hidden-xs">Monthly Report</th>
            <th class="hidden-xs">Commission <br>Date : <?php
                    if(isset($_REQUEST['from_date']) && isset($_REQUEST['to_date'])) {
                        echo $_REQUEST['from_date'] . " - ". $_REQUEST['to_date'];
                    } else {
                        echo $date_today['month']."-".$date_today['year'];
                    }
                    ?></th>
        </tr>

    <?php

    if($resUser->num_rows > 0)
    {
        /*print_r($_REQUEST['from_date']);
        print_r($_REQUEST['to_date']);*/

        if(isset($_REQUEST['from_date']) && isset($_REQUEST['to_date'])) {
            $from_date =  explode("/",$_REQUEST['from_date']);
            $to_date =  explode("/",$_REQUEST['to_date']);

            $from_month = $from_date[0];
            $from_day  = $from_date[1];
            $from_year  = $from_date[2];

            $newFromDate = $from_year."-".$from_month."-".$from_day;

            $to_month = $to_date[0];
            $to_day  = $to_date[1];
            $to_year  = $to_date[2];


            $newToDate = $to_year."-".$to_month."-".$to_day;

            /*if($from_year!=$to_year) {
                $yearCondition = "and (YEAR(aos_invoices.invoice_date)>=$from_year and YEAR(aos_invoices.invoice_date)<=$to_year)";
            } else {
                $yearCondition = "and YEAR(aos_invoices.invoice_date)=$from_year";
            }

            if($from_month!=$to_month) {
                $monthCondition = "and (MONTH(aos_invoices.invoice_date)>=$from_month and MONTH(aos_invoices.invoice_date)<=$to_month)";
            } else {
                $monthCondition = "and MONTH(aos_invoices.invoice_date)=$from_month";
            }

            if($from_day!=$to_day) {
                $dayCondition = "and (DAYOFMONTH(aos_invoices.invoice_date)>=$from_day and DAYOFMONTH(aos_invoices.invoice_date)<=$to_day)";
            } else {
                $dayCondition = "and DAYOFMONTH(aos_invoices.invoice_date)=$from_day";
            }*/

            $filterCondition = "and aos_invoices.invoice_date >= '".$newFromDate."' and aos_invoices.invoice_date <='".$newToDate."'";

        }

        while($rowUser = $db->fetchByAssoc($resUser)) {
            ?>
            <tr class="evenListRowS1 cz-color-6573395 cz-color-15724527">
            <td><?php echo $rowUser['first_name']." ".$rowUser['last_name'];?></td>
                <td><a href="?action=DetailView&module=atomi_Invoice_Commission_Report&record=<?php echo $rowUser['id'];?>">Link to Monthly Detail Commission</a></td>
                <?php
                    $sql = "select aos_products_quotes.product_qty as productQty, aos_invoices.id as invoiceId, aos_invoices.name as invoiceName, aos_products_quotes_cstm.tier_c, aos_products_quotes_cstm.product_tier_5_price_c, DAYOFMONTH(aos_invoices.invoice_date) as dayOfInvoice, aos_invoices.invoice_date from aos_invoices INNER JOIN aos_products_quotes ON aos_invoices.id=aos_products_quotes.parent_id INNER JOIN aos_products_quotes_cstm ON aos_products_quotes.id=aos_products_quotes_cstm.id_c where aos_invoices.deleted = '0' and aos_invoices.created_by='".$rowUser['id']."' and YEAR(aos_invoices.invoice_date)=$year and MONTH(aos_invoices.invoice_date)=$month order by aos_invoices.invoice_date ASC";
            if(isset($_REQUEST['from_date']) && isset($_REQUEST['to_date'])) {
                $sql = "select aos_products_quotes.product_qty as productQty, aos_invoices.id as invoiceId, aos_invoices.name as invoiceName, aos_products_quotes_cstm.tier_c, aos_products_quotes_cstm.product_tier_5_price_c, DAYOFMONTH(aos_invoices.invoice_date) as dayOfInvoice, aos_invoices.invoice_date from aos_invoices INNER JOIN aos_products_quotes ON aos_invoices.id=aos_products_quotes.parent_id INNER JOIN aos_products_quotes_cstm ON aos_products_quotes.id=aos_products_quotes_cstm.id_c where aos_invoices.deleted = '0' and aos_invoices.created_by='".$rowUser['id']."' $filterCondition order by aos_invoices.invoice_date ASC";
            }


                    $res = $db->query($sql);
                    //echo $sql;
                    $numRows = $res->num_rows;
                    $tierCommission = ["Tier 1"=>1, "Tier 2"=>2, "Tier 3"=>3, "Tier 4"=>4, "Tier 5"=>5];
                    unset($calculateDetailCommission);
                    if($numRows > 0) {
                        $calculateCommission = [];
                        $calculateDetailCommission = [];
                        $i = 0;
                        while($rows = $db->fetchByAssoc($res)) {
                            $productQty = (int)$rows['productQty'];
                            $commission = (number_format((float)$rows['product_tier_5_price_c'], 2, '.', '')*$productQty*$tierCommission[$rows['tier_c']])/100;
                            $calculateDetailCommission[$i] = $calculateDetailCommission[$i]+number_format((float)$commission, 2, '.', '');
                            $i++;

                        }
                    }
                    ?>
                <td><?php
                        //echo $sql;
            if(isset($_REQUEST['from_date']) && isset($_REQUEST['to_date'])) {
                //echo $sql;
                echo "<a href='index.php?action=DetailView&module=atomi_Invoice_Commission_Report&record=".$rowUser['id']."&from_date=".$_REQUEST['from_date']."&to_date=".$_REQUEST['to_date']."'>$" . number_format((float)array_sum($calculateDetailCommission), 2, '.', '')."</a>";

            } else {

                echo "$" . number_format((float)array_sum($calculateDetailCommission), 2, '.', '');

            }
                        ?></td>
            </tr>
            <?php

        }
    }
    ?>
    </table>
    <?php

}

}

?>