<?php

if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Created by PhpStorm.
 * User: DELL
 * Date: 07-Mar-18
 * Time: 9:50 PM
 */

class updateQuoteLogicHook {

    public function checkquoteIdExists($bean = null, $event = null, $arguments = null)
    {
        if($_REQUEST['record'] == "") {
            global $db;

            $quote_id_c = $bean->quote_id_c;

            $resultQutNum = $db->query("select * from aos_quotes inner join aos_quotes_cstm on aos_quotes.id=aos_quotes_cstm.id_c where aos_quotes.deleted = '0' and aos_quotes_cstm.quote_id_c ='" . $quote_id_c . "' ORDER BY aos_quotes.date_entered DESC");

            $num = $resultQutNum->num_rows;

            if ($num > 0) {

                //sugar_die("Invoice number already exists into database!.");


                SugarApplication::appendErrorMessage('Quote Id already exists into database!');
                $params = array(
                    'module' => 'AOS_Quotes',
                    'action' => 'EditView',
                    'id' => $bean->id
                );
                SugarApplication::redirect('index.php?' . http_build_query($params));

            } else {
                //echo "not exists";
            }
        }
    }

}