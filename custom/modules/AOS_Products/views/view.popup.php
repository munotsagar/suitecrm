<?php
require_once('include/MVC/View/views/view.popup.php');
class AOS_ProductsViewPopup extends ViewPopup
{
    public $type ='list';
    /**
     * @see ViewList::preDisplay()
     */
    // var $where ;

   // global $bean;

     public function listViewProcess(){

        parent::listViewProcess();
    }

    
    public function preDisplay(){       // predisplay logic gose here

        global $bean;
        if(isset($_REQUEST['type'])) {
            $_REQUEST['type_advanced'] = $_REQUEST['type'];
        }

        parent::preDisplay();
    }

    function AOS_ProductsViewPopup(){

        parent::ViewPopup();
    }

    
    /*public function display(){

        echo "I am Here....";
        parent::display();
    }*/

}
?>

