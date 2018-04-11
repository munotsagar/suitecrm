<?php

if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
/**
 * Created by PhpStorm.
 * User: DELL
 * Date: 07-Mar-18
 * Time: 9:50 PM
 */

class updateProductDetailsLogicHook {

    public function updateProductDetails($bean = null, $event = null, $arguments = null)
    {
        /*echo "<pre>";
        print_r($bean);exit;*/
        $paymentAmount = $_REQUEST['paymentAmount'];
        $transactionNumber = $_REQUEST['transactionNumber'];
        $paymentDate = $_REQUEST['paymentDate'];
        $paymentType = $_REQUEST['paymentType'];

        $paymentDetailCnt = count($paymentAmount);

        require_once('include/entryPoint.php');
        $db = DBManagerFactory::getInstance();

        $result = $db->query("select * from atomi_invoice_payment_details_cstm where  aos_invoices_id_c = '".$bean->id."'");

        while($row = $db->fetchByAssoc($result)) {

            $sql = "delete from atomi_invoice_payment_details where id = '".$row['id_c']."'";
            $db->query($sql);

            $sql2 = "delete from atomi_invoice_payment_details_cstm where id_c = '".$row['id_c']."'";
            $db->query($sql2);
        }

        /*$sql = "DELETE FROM `atomi_invoice_payment_details` WHERE date_entered <'".$onemonthback."'";
        $result = $db->query($sql);*/

        for($i=0; $i<$paymentDetailCnt; $i++) {

            if((int)$paymentAmount[$i] > 0) {
                $payDetailObj = new atomi_invoice_payment_details();
                $payDetailObj->paymentamount_c = $paymentAmount[$i];
                $payDetailObj->paymenttype_c = $paymentType[$i];

                $dateArray = explode("/", $paymentDate[$i]);

                $newDate = $dateArray[2]."-".$dateArray[0]."-".$dateArray[1];

                $payDetailObj->paymentdate_c = date('Y-m-d', strtotime($newDate));
                $payDetailObj->transactionnumber_c = $transactionNumber[$i];
                $payDetailObj->aos_invoices_id_c  = $bean->id;
                $payDetailObj->save();
            }

        }

        /*$resProd = $db->query("select sum(product_qty) as totalQty, product_id from aos_products_quotes where deleted = '0' group by product_id");

        $prodNum = $resProd->num_rows;

        if ($prodNum > 0) {

            while($rowProd = $db->fetchByAssoc($resProd)) {

                $product_qty = $rowProd['totalQty'];

                $db->query("update aos_products_cstm set total_stock_c = (total_stock_c - ".$product_qty.") where  id_c = '".$rowProd['product_id']."'");

            }

        }*/
    }

    /**
     * @param $product_id
     * @param $qty
     */
    public function updateOnHandProductQty($product_id, $qty)
    {
        require_once('include/entryPoint.php');
        $db = DBManagerFactory::getInstance();
        $db->query("update aos_products_cstm set total_stock_c = (total_stock_c - ".$qty.") where  id_c = '".$product_id."'");

    }

    /**
     * @param $product_id
     * @param $qty
     */
    public function updateOnHandAddProductQty($product_id, $qty)
    {
        require_once('include/entryPoint.php');
        $db = DBManagerFactory::getInstance();
        $db->query("update aos_products_cstm set total_stock_c = (total_stock_c + ".$qty.") where  id_c = '".$product_id."'");

    }

    /**
     * @param null $bean
     * @param null $event
     * @param null $arguments
     */
    public function updateOnHandStock($bean = null, $event = null, $arguments = null)
    {
        require_once('include/entryPoint.php');
        $db = DBManagerFactory::getInstance();

        $product_cnt = count($_REQUEST['product_product_id']);

        $service_cnt = count($_REQUEST['service_product_id']);

        /*echo $product_cnt;

        echo $service_cnt;exit;*/

        /*echo "<pre>";

        print_r($_REQUEST); exit;*/

        if($_REQUEST['record'] == "") {

            if($product_cnt > 0) {

                $product_data = $_REQUEST['product_product_id'];
                $product_qty = $_REQUEST['product_product_qty'];

                for ($i = 0; $i < $product_cnt; $i++) {
                    $this->updateOnHandProductQty($product_data[$i], $product_qty[$i]);

                    /*$db->query("update aos_products_cstm set total_stock_c = (total_stock_c - ".$product_qty[$i].") where  id_c = '".$product_data[$i]."'");*/
                }
            }

            if($service_cnt > 0) {

                $service_data = $_REQUEST['service_product_id'];
                $service_qty = $_REQUEST['service_product_qty'];

                for ($j = 0; $j < $service_cnt; $j++) {
                    $this->updateOnHandProductQty($service_data[$j], $service_qty[$j]);

                    /*$db->query("update aos_products_cstm set total_stock_c = (total_stock_c - ".$service_qty[$j].") where  id_c = '".$service_data[$j]."'");*/
                }
            }

        } else {

            $productQtyData = [];

            if($product_cnt > 0) {

                $product_data = $_REQUEST['product_product_id'];
                $product_qty = $_REQUEST['product_product_qty'];

                for ($i = 0; $i < $product_cnt; $i++) {
                    //$this->updateOnHandProductQty($product_data[$i], $product_qty[$i]);

                    /*$db->query("update aos_products_cstm set total_stock_c = (total_stock_c - ".$product_qty[$i].") where  id_c = '".$product_data[$i]."'");*/

                    $productQtyData[$product_data[$i]] = $productQtyData[$product_data[$i]] + (int)$product_qty[$i];

                    /*$productQtyData['product_data'][$i] = $product_data[$i];

                    $productQtyData['product_qty'][$i] = (int)$product_qty[$i];*/

                }
            }

            if($service_cnt > 0) {

                $service_data = $_REQUEST['service_product_id'];
                $service_qty = $_REQUEST['service_product_qty'];

                for ($j = 0; $j < $service_cnt; $j++) {
                    //$this->updateOnHandProductQty($service_data[$j], $service_qty[$j]);

                    /*$db->query("update aos_products_cstm set total_stock_c = (total_stock_c - ".$service_qty[$j].") where  id_c = '".$service_data[$j]."'");*/

                    $productQtyData[$service_data[$j]] = $productQtyData[$service_data[$j]] + (int)$service_qty[$j];

                    /*$productQtyData['product_data'][$i] = $service_data[$j];

                    $productQtyData['product_qty'][$i] = (int)$service_qty[$j];*/

                }
            }

            /*print_r($productQtyData);

            echo "select sum(product_qty) as sum_qty, product_id, parent_id from aos_products_quotes where parent_id = '".$bean->id."' group by product_id";

            exit;*/

            $resultProducts = $db->query("select sum(product_qty) as sum_qty, product_id, parent_id from aos_products_quotes where parent_id = '".$bean->id."' group by product_id");

            while($rowProduct = $db->fetchByAssoc($resultProducts)) {

                if($productQtyData[$rowProduct['product_id']]) {

                    $sum_qty = (int)$rowProduct['sum_qty'];
                    echo "<br> sum_qty : ".$sum_qty;

                    echo "<br>product_id : ".$rowProduct['product_id'];
                    if($sum_qty!=$productQtyData[$rowProduct['product_id']]) {
                        if($sum_qty > $productQtyData[$rowProduct['product_id']]) {
                            echo $productQtyData[$rowProduct['product_id']];
                            $diffQty = $sum_qty - $productQtyData[$rowProduct['product_id']];

                            $this->updateOnHandAddProductQty($rowProduct['product_id'], $diffQty);
                            unset($productQtyData[$rowProduct['product_id']]);
                        }

                        if($sum_qty < $productQtyData[$rowProduct['product_id']]) {

                            echo $productQtyData[$rowProduct['product_id']];
                            $diffQty = $productQtyData[$rowProduct['product_id']] - $sum_qty;

                            $this->updateOnHandProductQty($rowProduct['product_id'], $diffQty);
                            unset($productQtyData[$rowProduct['product_id']]);

                        }
                    } else {
                        unset($productQtyData[$rowProduct['product_id']]);
                    }


                }
            }
            //print_r($productQtyData);exit;
            if(count($productQtyData) > 0) {

                foreach ($productQtyData as $key=>$value) {

                    $this->updateOnHandProductQty($key, $value);

                }

            }

        }



    }

    public function checkinvoiceNumberExists($bean = null, $event = null, $arguments = null)
    {
        if($_REQUEST['record'] == "") {
            global $db;

            $invoice_number_c = $bean->invoice_number_c;

            $resultInvNum = $db->query("select * from aos_invoices inner join aos_invoices_cstm on aos_invoices.id=aos_invoices_cstm.id_c where aos_invoices.deleted = '0' and aos_invoices_cstm.invoice_number_c ='" . $invoice_number_c . "' ORDER BY aos_invoices.date_entered DESC");

            $num = $resultInvNum->num_rows;

            if ($num > 0) {

                //sugar_die("Invoice number already exists into database!.");


                SugarApplication::appendErrorMessage('Invoice number already exists into database!');
                $params = array(
                    'module' => 'AOS_Invoices',
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