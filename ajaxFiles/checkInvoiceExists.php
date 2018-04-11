<?php
/**
 * Created by PhpStorm.
 * User: DELL
 * Date: 15-Mar-18
 * Time: 12:09 AM
 */

global $db;

$invoice_number_c = $_REQUEST['invoice_number_c'];

$resultInvNum = $db->query("select * from aos_invoices inner join aos_invoices_cstm on aos_invoices.id=aos_invoices_cstm.id_c where aos_invoices.deleted = '0' and aos_invoices_cstm.invoice_number_c ='".$invoice_number_c."' ORDER BY aos_invoices.date_entered DESC");

$num = $resultInvNum->num_rows;

if($num > 0) {

    echo "exists";
} else {
    echo "not exists";
}

