<?php

require_once('include/MVC/View/views/view.list.php');
class AOS_ProductsViewList extends ViewList {


    function listViewProcess()
    {
        $tplFile = 'custom/modules/AOS_Products/ListView/ListViewGeneric.tpl';
        $this->lv->setup($this->seed, $tplFile, $this->where, $this->params);
        echo $this->lv->display();
    }

	 function preDisplay(){

        parent::preDisplay();
    }

    function display() {
    	parent::display();
    }

}

?>