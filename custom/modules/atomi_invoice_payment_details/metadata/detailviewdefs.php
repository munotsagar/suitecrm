<?php
$module_name = 'atomi_invoice_payment_details';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
          1 => 'assigned_user_name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'paymentamount_c',
            'label' => 'LBL_PAYMENTAMOUNT',
          ),
          1 => 
          array (
            'name' => 'paymentdate_c',
            'label' => 'LBL_PAYMENTDATE',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'paymenttype_c',
            'studio' => 'visible',
            'label' => 'LBL_PAYMENTTYPE',
          ),
          1 => 
          array (
            'name' => 'transactionnumber_c',
            'label' => 'LBL_TRANSACTIONNUMBER',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'invoice_c',
            'studio' => 'visible',
            'label' => 'LBL_INVOICE',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'aos_invoices_atomi_invoice_payment_details_1_name',
          ),
        ),
      ),
    ),
  ),
);
;
?>
