<?php
/**
 * Created by PhpStorm.
 * User: DELL
 * Date: 15-Mar-18
 * Time: 12:09 AM
 */

global $db;

$quote_id_c = $_REQUEST['quote_id_c'];

$resultInvNum = $db->query("select * from aos_quotes inner join aos_quotes_cstm on aos_quotes.id=aos_quotes_cstm.id_c where aos_quotes.deleted = '0' and aos_quotes_cstm.quote_id_c ='".$quote_id_c."' ORDER BY aos_quotes.date_entered DESC");

$num = $resultInvNum->num_rows;

if($num > 0) {

    echo "exists";
} else {
    echo "not exists";
}

