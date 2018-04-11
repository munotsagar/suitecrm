<?php
// Do not store anything in this file that is not part of the array or the hook version.  This file will
// be automatically rebuilt in the future.
$hook_version = 1;
$hook_array = Array();
// position, file, function
$hook_array['before_save'] = Array();

$hook_array['before_save'][] = Array(1, 'check invoice already exist', 'custom/modules/AOS_Invoices/updateProductDetailsLogicHook.php','updateProductDetailsLogicHook', 'checkinvoiceNumberExists');

$hook_array['before_save'][] = Array(9, 'update On Hand Stock', 'custom/modules/AOS_Invoices/updateProductDetailsLogicHook.php','updateProductDetailsLogicHook', 'updateOnHandStock');





$hook_array['after_save'] = Array();

$hook_array['after_save'][] = Array(77, 'updateProductDetails', 'custom/modules/AOS_Invoices/updateProductDetailsLogicHook.php','updateProductDetailsLogicHook', 'updateProductDetails');

/*
$hook_array['before_save'][] = Array(77, 'updateGeocodeInfo', 'modules/Contacts/ContactsJjwg_MapsLogicHook.php','ContactsJjwg_MapsLogicHook', 'updateGeocodeInfo');

if (!isset($_SESSION['SHOW_DUPLICATES']))
    sugar_die("Unauthorized access to this area.");
*/





?>