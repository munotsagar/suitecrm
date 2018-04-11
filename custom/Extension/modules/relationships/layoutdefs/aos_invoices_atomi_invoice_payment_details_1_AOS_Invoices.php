<?php
 // created: 2018-03-07 19:38:39
$layout_defs["AOS_Invoices"]["subpanel_setup"]['aos_invoices_atomi_invoice_payment_details_1'] = array (
  'order' => 100,
  'module' => 'atomi_invoice_payment_details',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_AOS_INVOICES_ATOMI_INVOICE_PAYMENT_DETAILS_1_FROM_ATOMI_INVOICE_PAYMENT_DETAILS_TITLE',
  'get_subpanel_data' => 'aos_invoices_atomi_invoice_payment_details_1',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
