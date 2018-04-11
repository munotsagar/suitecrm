<?php
$module_name = 'atomi_invoice_payment_details';
$listViewDefs [$module_name] = 
array (
  'INVOICE_C' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_INVOICE',
    'id' => 'AOS_INVOICES_ID_C',
    'link' => true,
    'width' => '10%',
  ),
  'PAYMENTAMOUNT_C' => 
  array (
    'type' => 'currency',
    'default' => true,
    'label' => 'LBL_PAYMENTAMOUNT',
    'currency_format' => true,
    'width' => '10%',
  ),
  'PAYMENTTYPE_C' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_PAYMENTTYPE',
    'width' => '10%',
  ),
  'PAYMENTDATE_C' => 
  array (
    'type' => 'date',
    'default' => true,
    'label' => 'LBL_PAYMENTDATE',
    'width' => '10%',
  ),
  'TRANSACTIONNUMBER_C' => 
  array (
    'type' => 'varchar',
    'default' => true,
    'label' => 'LBL_TRANSACTIONNUMBER',
    'width' => '10%',
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => true,
  ),
  'AOS_INVOICES_ATOMI_INVOICE_PAYMENT_DETAILS_1_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_AOS_INVOICES_ATOMI_INVOICE_PAYMENT_DETAILS_1_FROM_AOS_INVOICES_TITLE',
    'id' => 'AOS_INVOICES_ATOMI_INVOICE_PAYMENT_DETAILS_1AOS_INVOICES_IDA',
    'width' => '10%',
    'default' => false,
  ),
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => false,
    'link' => true,
  ),
);
;
?>
