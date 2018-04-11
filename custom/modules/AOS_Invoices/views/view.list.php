<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

require_once('include/MVC/View/views/view.list.php');

class AOS_InvoicesViewList extends ViewList
{

    function AOS_InvoicesViewList()
    {

        parent::ViewList();
    }

    /*
* Override listViewProcess with addition to where clause to exclude project templates
*/
    function listViewProcess()
    {
        $tplFile = 'custom/modules/AOS_Invoices/ListView/ListViewGeneric.tpl';
        $this->lv->setup($this->seed, $tplFile, $this->where, $this->params);
        echo $this->lv->display();
    }
}