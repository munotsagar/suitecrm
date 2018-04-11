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


class atomi_Invoice_Commission_ReportViewDetail extends ViewDetail
{
    public function __construct()
    {
        parent::__construct();
        //$this->useForSubpanel = true;
        //$this->useModuleQuickCreateTemplate = true;
    }


    function atomi_Invoice_Commission_ReportViewDetail(){
        parent::ViewDetail();
    }

    /*public function preDisplay()
    {
       echo "Here now...";exit;
    }*/

    function display() {

        //parent::display();

                global $db;

                $tierCommission = ["Tier 1"=>1, "Tier 2"=>2, "Tier 3"=>3, "Tier 4"=>4, "Tier 5"=>5];
                $record = $_REQUEST['record'];
                $myUser = new User();
                $myUser->retrieve($record);
                $userName = $myUser->full_name;
                ?>
                <style type="text/css" xmlns="http://www.w3.org/1999/html">
                table tr {
                    border: 1px solid black;
                }
                .innerTable tr {
                    border: 0px;
                    border-right: 1px solid black;
                }
                .redFont
                {
                    color: red;
                }
                .greenFont
                {
                    color: green;
                }
                .detailCommissionTable tr td{
                    border: 1px solid black;
                }

            </style>
            <style type="text/css" media="print">
@page {
    size: auto;   /* auto is the initial value */
    margin: 0;  /* this affects the margin in the printer settings */
}
</style>
        <span style="font-size: large;">Commission For <?php echo $userName;?></span><br><br>
        <div id="myCustomeditor"></div>
<input type="button" onclick="window.print();" value="Print Page">
        <?php
                if(isset($_REQUEST['from_date']) && isset($_REQUEST['to_date'])) {
                    $returnData = $this->generateCommissionData($record, $tierCommission);
                    $this->detailCommission("", $returnData['month'], $returnData['year'], $returnData['calculateDetailCommission'], $returnData['sumCommission']);
                } else {

                    $returnData = $this->generateCommissionData($record, $tierCommission);

                //echo "Here now...";
                ?>
            <div id="myCustomContent">

            <table cellspacing="5" cellpadding="5" width="300px;">
                <tr style="border: 0px;">
                    <td>
                        <?php
                            $this->formMonth();
                        ?>
                    </td>
                    <td>
                        <?php
                            $this->formYear();
                        ?>
                    </td>
                </tr>

            </table>
            <br><br><br>
        <input type="hidden" id="record" value="<?php echo $record;?>">

            <?php
                $this->showCalender($returnData['date'], $returnData['calculateCommission'], $returnData['sumCommission']);

                if($_REQUEST['day']) {

                    $day = $_REQUEST['day'];
                    $this->detailCommission($day, $returnData['month'], $returnData['year'], $returnData['calculateDetailCommission'], $returnData['sumCommission']);
                }

        ?>
        </div>
<script language="JavaScript" src="custom/modules/atomi_Invoice_Commission_Report/js/detailCommission.js"></script>

        <?php
                }


    }

    function generateCommissionData($record, $tierCommission)
    {
        global $db;

        if(isset($_REQUEST['year']) && isset($_REQUEST['month']))
        {
            $customDate = $_REQUEST['year']."-".$_REQUEST['month']."-".date('d');
            $date = date("Y-m-d", strtotime($customDate));
            $month = $_REQUEST['month'];
            $year = $_REQUEST['year'];
        }
        else
        {
            $date = date("Y-m-d");
            $month = date("m");
            $year = date("Y");
        }

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

            $filterCondition = "and aos_invoices.invoice_date >= '".$newFromDate."' and aos_invoices.invoice_date <='".$newToDate."'";

            $sql = "select aos_products_quotes.product_qty as productQty, aos_invoices.id as invoiceId, aos_invoices.name as invoiceName, aos_products_quotes_cstm.tier_c, aos_products_quotes_cstm.product_tier_5_price_c, DAYOFMONTH(aos_invoices.invoice_date) as dayOfInvoice, aos_invoices.invoice_date from aos_invoices INNER JOIN aos_products_quotes ON aos_invoices.id=aos_products_quotes.parent_id INNER JOIN aos_products_quotes_cstm ON aos_products_quotes.id=aos_products_quotes_cstm.id_c where aos_invoices.deleted = '0' and aos_invoices.created_by='".$record."' $filterCondition order by aos_invoices.invoice_date ASC";

        } else {

        $sql = "select aos_products_quotes.product_qty as productQty, aos_invoices.id as invoiceId, aos_invoices.name as invoiceName, aos_products_quotes_cstm.tier_c, aos_products_quotes_cstm.product_tier_5_price_c, DAYOFMONTH(aos_invoices.invoice_date) as dayOfInvoice, aos_invoices.invoice_date from aos_invoices INNER JOIN aos_products_quotes ON aos_invoices.id=aos_products_quotes.parent_id INNER JOIN aos_products_quotes_cstm ON aos_products_quotes.id=aos_products_quotes_cstm.id_c where aos_invoices.deleted = '0' and aos_invoices.created_by='".$record."' and YEAR(aos_invoices.invoice_date)=$year and MONTH(aos_invoices.invoice_date)=$month order by aos_invoices.invoice_date ASC";

        }

        //echo $sql;exit;

        $res = $db->query($sql);

        $numRows = $res->num_rows;

        $returnData = ["month"=>$month, "year"=>$year, "date"=>$date, "productQty"=>"", "commision"=>"", "calculateDetailCommission"=>[], "calculateCommission"=>[], "sumCommission"=>[]];

        if($numRows > 0) {
            $calculateCommission = [];
            $calculateDetailCommission = [];
            $sumCommission = [];
            $i = 0;
            while($rows = $db->fetchByAssoc($res)) {

                $returnData['productQty'] = (int)$rows['productQty'];
                $returnData['commision'] = (number_format((float)$rows['product_tier_5_price_c'], 2, '.', '')*$returnData['productQty']*$tierCommission[$rows['tier_c']])/100;

                $returnData['calculateDetailCommission'][$rows['dayOfInvoice']][$i] = [
                        "commission" => number_format((float)$returnData['commision'], 2, '.', ''),
                        "invoice"=>'<a href="?action=DetailView&module=AOS_Invoices&record='.$rows['invoiceId'].'">'.$rows['invoiceName'].'</a>',

                        "sellingPrice"=>number_format((float)$rows['product_tier_5_price_c'], 2, '.', ''),
                        'tier'=>$rows['tier_c'],
                        'date'=>$rows['invoice_date'],
                        'qty'=>$returnData['productQty']
                ];

                $returnData['calculateCommission'][$rows['dayOfInvoice']] = $returnData['calculateCommission'][$rows['dayOfInvoice']]+number_format((float)$returnData['commision'], 2, '.', '');

                $returnData['sumCommission'][$i] = $returnData['sumCommission'][$i]+number_format((float)$returnData['commision'], 2, '.', '');

                $i++;

            }
        }
        //print_r($returnData);exit;
        return $returnData;
    }

    function detailCommission($day, $month, $year, $calculateDetailCommissions, $commision)
    {
        global $db;
        $args = func_get_args();
        $totalCommission = ($day)?"":array_sum($commision);

        //print_r($calculateDetailCommissions[$day]); exit;
        $date_today = getdate(mktime(0,0,0,$month,$day,$year));
        /*$sqlDetailsCom = "select aos_products_quotes_cstm.tier_c, aos_products_quotes_cstm.product_tier_5_price_c, DAYOFMONTH(aos_invoices.invoice_date) as dayOfInvoice, aos_invoices.invoice_date from aos_invoices INNER JOIN aos_products_quotes ON aos_invoices.id=aos_products_quotes.parent_id INNER JOIN aos_products_quotes_cstm ON aos_products_quotes.id=aos_products_quotes_cstm.id_c where aos_invoices.deleted = '0' and aos_invoices.created_by='".$record."' and YEAR(aos_invoices.invoice_date)=$year and MONTH(aos_invoices.invoice_date)=$month and DAYOFMONTH(aos_invoices.invoice_date)=$day order by aos_invoices.invoice_date ASC";

        $resDetailsCom = $db->query($sqlDetailsCom);

        $numDetailsCom = $resDetailsCom->num_rows;*/

        $numDetailsCom = ($day)?count($calculateDetailCommissions[$day]):count($calculateDetailCommissions);
        //echo $numDetailsCom;exit;
        if($numDetailsCom > 0) {

            ?>
                <br><br>
                <div style="font-size: large; font-weight: bold;">Detail Commission For Date : <?php echo ($day)?($day." - ".$date_today['month']." - ".$year):($_REQUEST['from_date']." - ".$_REQUEST['to_date']);?></div><br><br>
                    <table class="detailCommissionTable" cellspacing"5" cellpadding="5" border="1" style='border:#808080 1px solid;width:700px;height: auto;'>
                        <tr align="center">
                            <td align="center">Date</td>
                            <td align="center">Invoice</td>
                            <td align="center">Tier</td>
                            <td align="center">Selling Cost</td>
                            <td align="center">Qty</td>
                            <td align="center">Commission</td>
                        </tr>
                    <?php
                    if($day =="") {
                        foreach($calculateDetailCommissions as $myCalculation)
                            {
                                foreach ($myCalculation as $calculateDetailCommission)
                                    {
                                        ?>
                            <tr>
                                <td align="center"><?php echo $calculateDetailCommission['date'];?></td>
                                <td align="center"><?php echo $calculateDetailCommission['invoice'];?></td>
                                <td align="center"><?php echo $calculateDetailCommission['tier'];?></td>
                                <td align="center">$<?php echo $calculateDetailCommission['sellingPrice'];?></td>
                                <td align="center"><?php echo $calculateDetailCommission['qty'];?></td>
                                <td align="center">$<?php echo $calculateDetailCommission['commission'];?></td>
                            </tr>
                            <?php
                                    }
                            }
                    } else {
                        foreach($calculateDetailCommissions[$day] as $calculateDetailCommission) {
                            $totalCommission = $totalCommission + $calculateDetailCommission['commission'];
                        ?>
                            <tr>
                                <td align="center"><?php echo $calculateDetailCommission['date'];?></td>
                                <td align="center"><?php echo $calculateDetailCommission['invoice'];?></td>
                                <td align="center"><?php echo $calculateDetailCommission['tier'];?></td>
                                <td align="center">$<?php echo $calculateDetailCommission['sellingPrice'];?></td>
                                <td align="center"><?php echo $calculateDetailCommission['qty'];?></td>
                                <td align="center">$<?php echo $calculateDetailCommission['commission'];?></td>
                            </tr>
                            <?php

                    }

                    }
                    ?>
                            <tr>
                                <td colspan="3" align="center"><strong>Total Commission : </strong></td>
                                <td colspan="3" align="center"><strong> $<?php echo $totalCommission;?></strong></td>
                            </tr>
                    <?php
                        ?>
                    </table>

        <?php

        }


    }

    function showCalender($date, $calculateCommission, $sumCommission)
    {
        //$date = date("Y-m-d");
        $day_num = date('j', strtotime($date)); //If today is September 29, $day_num=29
        //$day_num=date("j"); //If today is September 29, $day_num=29
        $month_num = date("m", strtotime($date)); //If today is September 29, $month_num=9
        $year = date("Y", strtotime($date)); //4-digit year
        $date_today = getdate(mktime(0,0,0,$month_num,1,$year)); //Returns array of date info for 1st day of this month
        $month_name = $date_today["month"]; //Example: "September" - to label the Calendar
        $first_week_day = $date_today["wday"]; //"wday" is 0-6, 0 being Sunday. This is for day 1 of this month

        $cont = true;
        $today = 27; //The last day of the month must be >27, so start here
        while (($today <= 32) && ($cont)) //At 32, we have to be rolling over to the next month
        {
            //Iterate through, incrementing $today
            //Get the date information for the (hypothetical) date $month_num/$today/$year
            $date_today = getdate(mktime(0,0,0,$month_num,$today,$year));
//Once $date_today's month ($date_today["mon"]) rolls over to the next month, we've found the $lastday
            if ($date_today["mon"] != $month_num)
            {
                $lastday = $today - 1; //If we just rolled over to the next month, need to subtract 1 to get our $lastday
                $cont = false; //This kicks us out of the while loop
            }
            $today++;
        }
        ?>
        <!--<caption><?php /*echo $month_name, " ", $year;*/?></caption>-->
        <table cellspacing=0 cellpadding="5" border="1" style='border:#808080 1px solid;width:700px;height: 500px;'>

        <tr align="center"><td align="center">Su</td><td>M</td><td>Tu</td><td>W</td><td>Th</td><td>F</td><td>Sa</td></tr>

        <?php

        $day = 1; //This variable will track the day of the month
        $wday = $first_week_day; //This variable will track the day of the week (0-6, with Sunday being 0)
        $firstweek = true; //Initialize $firstweek variable so we can deal with it first
        while ( $day <= $lastday) //Iterate through all days of the month
        {
            if ($firstweek) //Special case - first week (remember we initialized $first_week_day above)
            {
                echo "<tr align=\"center\">";
                for ($i=1; $i<=$first_week_day; $i++)
                {
                    echo "<td> </td>"; //Put a blank cell for each day until you hit $first_week_day
                }
                $firstweek = false; //Great, we're done with the blank cells
            }
            if ($wday==0) //Start a new row every Sunday
                echo "<tr align=\"center\">";

            echo "<td";
            if($calculateCommission[$day]) echo " bgcolor='yellow'"; //highlight TODAY in yellow

            $commisionPrice = ($calculateCommission[$day])?"<span class=\"greenFont\"><a class='commisionClick' day-num=\"$day\" style='color: green;cursor: pointer;'>$".$calculateCommission[$day]."</a></span>":"<span class=\"redFont\">No Commission</span>";

            echo "><table class='innerTable' width=\"100%;\" height=\"100%;\"><tr><td align=\"center\">$day</td></tr><tr><td align=\"center\">$commisionPrice</td></tr></table></td>";
            if ($wday==6)
                echo "</tr>"; //If today is Saturday, close this row

            $wday++; //Increment $wday
            $wday = $wday % 7; //Make sure $wday stays between 0 and 6 (so when $wday++ == 7, this will take it back to 0)
            $day++; //Increment $day
        }

        while($wday <=6 ) //Until we get through Saturday
        {
            echo "<td> </td>"; //Output an empty cell
            $wday++;
        }
        echo "</tr></table><table class='detailCommissionTable' cellspacing=0 cellpadding=\"5\" border=\"1\" style='border:#808080 1px solid;width:700px;height: auto;'><tr style='border: 1px;'><td width='220px;' align='center'>Total Commission:</td><td align='center'>$".number_format((float)array_sum($sumCommission), 2, '.', '')."</td></tr></table>";
    }

    function formMonth(){
            $monthArray = range(1, 12);
            $monthSelected = (isset($_REQUEST['month']))?$_REQUEST['month']:date("m");
            //echo $_REQUEST['month'];exit;
        ?>
            <select class="dateChange" id="monthId" size="1" name="month">
                <!--<option value="">Select Month</option>-->
                <?php
                    foreach ($monthArray as $month) {
                        // padding the month with extra zero
                        $monthPadding = str_pad($month, 2, "0", STR_PAD_LEFT);
                        // you can use whatever year you want
                        // you can use 'M' or 'F' as per your month formatting preference
                        $fdate = date("F", strtotime("2015-$monthPadding-01"));
                        $selected = ($monthPadding == $monthSelected)?"selected":"";
                        echo '<option '.$selected.' value="'.$monthPadding.'">'.$fdate.'</option>';
                    }
                ?>
            </select>
            <?php
    }

    function formYear()
    {
        // Sets the top option to be the current year. (IE. the option that is chosen by default).
        $currently_selected = $_REQUEST['year'];
        // Year to start available options at
        $earliest_year = date('Y')-10;
        // Set your latest year you want in the range, in this case we use PHP to just set it to the current year.
        $latest_year = date('Y');

        print '<select  class="dateChange"  id="yearId">';
        // Loops over each int[year] from current year, back to the $earliest_year [1950]
        foreach ( range( $latest_year, $earliest_year ) as $i ) {
            // Prints the option with the next year in range.
            print '<option value="'.$i.'"'.($i == $currently_selected ? ' selected="selected"' : '').'>'.$i.'</option>';
        }
        print '</select>';
    }
}