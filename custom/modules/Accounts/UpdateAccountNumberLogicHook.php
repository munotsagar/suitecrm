<?php

// custom/modules/Accounts/AccountsJjwg_MapsLogicHook.php

if (!defined('sugarEntry') || !sugarEntry)
    die('Not A Valid Entry Point');

class UpdateAccountNumberLogicHook {

    public function updateAccountNumber(&$bean, $event, $arguments)
    {
        //echo "I am Here ... ";exit;
        global $db;

        $result = $db->query("select * from accounts inner join accounts_cstm on accounts.id=accounts_cstm.id_c where accounts.deleted = '0' ORDER BY accounts.date_entered DESC");

        $num = $result->num_rows;

        if($num > 0) {

            $row = $db->fetchByAssoc($result);

            $customer_number = $row['customer_number_c'];

            //echo $customer_number;exit;

            if($customer_number > 0) {
                $customer_number = $customer_number + 1;

            } else {
                $customer_number = 1234;
            }

            $bean->customer_number_c = $customer_number;

            
        } else {
                $customer_number = 1234;
            }
			$bean->customer_id_c = "ACC-".$customer_number;
			
			if($bean->name!="") {

                $string = $bean->name;
                $words = explode(" ", $string);
                $letters = "";
                foreach ($words as $value) {
                    $letters .= substr($value, 0, 1);
                }

                $bean->customer_id_c = "ACC-".strtoupper($letters)."-".$customer_number;
            }			
			
        //echo $bean->name;
        //echo $bean->customer_id_c;exit;
    }

}