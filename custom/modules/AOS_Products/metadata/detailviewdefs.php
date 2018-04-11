<?php
$module_name = 'AOS_Products';
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
          0 => 
          array (
            'name' => 'name',
            'label' => 'LBL_NAME',
          ),
          1 => 
          array (
            'name' => 'vendor_part_number_c',
            'label' => 'LBL_VENDOR_PART_NUMBER',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'part_number',
            'label' => 'LBL_PART_NUMBER',
          ),
          1 => 
          array (
            'name' => 'upc_c',
            'label' => 'LBL_UPC',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'aos_product_category_name',
            'label' => 'LBL_AOS_PRODUCT_CATEGORYS_NAME',
          ),
          1 => 
          array (
            'name' => 'type',
            'label' => 'LBL_TYPE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'currency_id',
            'studio' => 'visible',
            'label' => 'LBL_CURRENCY',
          ),
          1 => 
          array (
            'name' => 'created_by_name',
            'label' => 'LBL_CREATED',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'vendor_c',
            'studio' => 'visible',
            'label' => 'LBL_VENDOR',
          ),
          1 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO_NAME',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'contact',
            'label' => 'LBL_CONTACT',
          ),
          1 => 
          array (
            'name' => 'url',
            'label' => 'LBL_URL',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'total_stock_c',
            'label' => 'LBL_TOTAL_STOCK',
          ),
          1 => 
          array (
            'name' => 'minimum_stock_alert_c',
            'label' => 'LBL_MINIMUM_STOCK_ALERT',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'label' => 'LBL_DESCRIPTION',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'image_c',
            'studio' => 'visible',
            'label' => 'LBL_IMAGE',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'purchase_cost_c',
            'label' => 'LBL_PURCHASE_COST',
          ),
          1 => 
          array (
            'name' => 'shipping_cost_c',
            'label' => 'LBL_SHIPPING_COST',
          ),
        ),
        10 => 
        array (
          0 => 
          array (
            'name' => 'internal_purchase_cost_c',
            'label' => 'LBL_INTERNAL_PURCHASE_COST',
          ),
          1 => 
          array (
            'name' => 'internal_mark_up_c',
            'label' => 'LBL_INTERNAL_MARK_UP',
          ),
        ),
        11 => 
        array (
          0 => 
          array (
            'name' => 'selling_cost_c',
            'label' => 'LBL_SELLING_COST',
          ),
          1 => '',
        ),
        12 => 
        array (
          0 => 
          array (
            'name' => 'tier_0_c',
            'label' => 'LBL_TIER_0',
          ),
          1 => 
          array (
            'name' => 'tier_0_price_c',
            'label' => 'LBL_TIER_0_PRICE',
          ),
        ),
        13 => 
        array (
          0 => 
          array (
            'name' => 'tier_1_c',
            'label' => 'LBL_TIER_1',
          ),
          1 => 
          array (
            'name' => 'tier_1_price_c',
            'label' => 'LBL_TIER_1_PRICE',
          ),
        ),
        14 => 
        array (
          0 => 
          array (
            'name' => 'tier_2_c',
            'label' => 'LBL_TIER_2',
          ),
          1 => 
          array (
            'name' => 'tier_2_price_c',
            'label' => 'LBL_TIER_2_PRICE',
          ),
        ),
        15 => 
        array (
          0 => 
          array (
            'name' => 'tier_3_c',
            'label' => 'LBL_TIER_3',
          ),
          1 => 
          array (
            'name' => 'tier_3_price_c',
            'label' => 'LBL_TIER_3_PRICE',
          ),
        ),
        16 => 
        array (
          0 => 
          array (
            'name' => 'tier_4_c',
            'label' => 'LBL_TIER_4',
          ),
          1 => 
          array (
            'name' => 'tier_4_price_c',
            'label' => 'LBL_TIER_4_PRICE',
          ),
        ),
        17 => 
        array (
          0 => 
          array (
            'name' => 'tier_5_c',
            'label' => 'LBL_TIER_5',
          ),
          1 => 
          array (
            'name' => 'tier_5_price_c',
            'label' => 'LBL_TIER_5_PRICE',
          ),
        ),
      ),
    ),
  ),
);
;
?>
