<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2018-03-07 19:38:39
$dictionary["atomi_invoice_payment_details"]["fields"]["aos_invoices_atomi_invoice_payment_details_1"] = array (
  'name' => 'aos_invoices_atomi_invoice_payment_details_1',
  'type' => 'link',
  'relationship' => 'aos_invoices_atomi_invoice_payment_details_1',
  'source' => 'non-db',
  'module' => 'AOS_Invoices',
  'bean_name' => 'AOS_Invoices',
  'vname' => 'LBL_AOS_INVOICES_ATOMI_INVOICE_PAYMENT_DETAILS_1_FROM_AOS_INVOICES_TITLE',
  'id_name' => 'aos_invoices_atomi_invoice_payment_details_1aos_invoices_ida',
);
$dictionary["atomi_invoice_payment_details"]["fields"]["aos_invoices_atomi_invoice_payment_details_1_name"] = array (
  'name' => 'aos_invoices_atomi_invoice_payment_details_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_INVOICES_ATOMI_INVOICE_PAYMENT_DETAILS_1_FROM_AOS_INVOICES_TITLE',
  'save' => true,
  'id_name' => 'aos_invoices_atomi_invoice_payment_details_1aos_invoices_ida',
  'link' => 'aos_invoices_atomi_invoice_payment_details_1',
  'table' => 'aos_invoices',
  'module' => 'AOS_Invoices',
  'rname' => 'name',
);
$dictionary["atomi_invoice_payment_details"]["fields"]["aos_invoices_atomi_invoice_payment_details_1aos_invoices_ida"] = array (
  'name' => 'aos_invoices_atomi_invoice_payment_details_1aos_invoices_ida',
  'type' => 'link',
  'relationship' => 'aos_invoices_atomi_invoice_payment_details_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_INVOICES_ATOMI_INVOICE_PAYMENT_DETAILS_1_FROM_ATOMI_INVOICE_PAYMENT_DETAILS_TITLE',
);


 // created: 2018-03-07 16:04:41
$dictionary['atomi_invoice_payment_details']['fields']['aos_invoices_id_c']['inline_edit']=1;

 

 // created: 2018-03-07 15:55:36
$dictionary['atomi_invoice_payment_details']['fields']['currency_id']['inline_edit']=1;

 

 // created: 2018-03-07 16:04:41
$dictionary['atomi_invoice_payment_details']['fields']['invoice_c']['inline_edit']='1';
$dictionary['atomi_invoice_payment_details']['fields']['invoice_c']['labelValue']='Invoice';

 

 // created: 2018-03-07 15:55:36
$dictionary['atomi_invoice_payment_details']['fields']['paymentamount_c']['inline_edit']='1';
$dictionary['atomi_invoice_payment_details']['fields']['paymentamount_c']['options']='numeric_range_search_dom';
$dictionary['atomi_invoice_payment_details']['fields']['paymentamount_c']['labelValue']='Payment Amount';
$dictionary['atomi_invoice_payment_details']['fields']['paymentamount_c']['enable_range_search']='1';

 

 // created: 2018-03-07 15:56:56
$dictionary['atomi_invoice_payment_details']['fields']['paymentdate_c']['inline_edit']='1';
$dictionary['atomi_invoice_payment_details']['fields']['paymentdate_c']['options']='date_range_search_dom';
$dictionary['atomi_invoice_payment_details']['fields']['paymentdate_c']['labelValue']='Payment Date';
$dictionary['atomi_invoice_payment_details']['fields']['paymentdate_c']['enable_range_search']='1';

 

 // created: 2018-03-07 15:54:01
$dictionary['atomi_invoice_payment_details']['fields']['paymenttype_c']['inline_edit']='1';
$dictionary['atomi_invoice_payment_details']['fields']['paymenttype_c']['labelValue']='Payment Type';

 

 // created: 2018-03-07 15:58:49
$dictionary['atomi_invoice_payment_details']['fields']['transactionnumber_c']['inline_edit']='1';
$dictionary['atomi_invoice_payment_details']['fields']['transactionnumber_c']['labelValue']='Transaction Number';

 
?>