<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.

 * SuiteCRM is an extension to SugarCRM Community Edition developed by Salesagility Ltd.
 * Copyright (C) 2011 - 2014 Salesagility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for  technical reasons, the Appropriate Legal Notices must
 * display the words  "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 ********************************************************************************/

include("modules/ACLRoles/ACLRole.php");
class AOS_ProductsViewDetail extends ViewDetail
{
    public function __construct()
    {
        parent::__construct();
        //$this->useForSubpanel = true;
        //$this->useModuleQuickCreateTemplate = true;
    }


    function AOS_ProductsViewDetail(){
        parent::ViewDetail();
    }

    public function preDisplay()
    {
        $metadataFile = $this->getMetaDataFile();
        $this->dv = new DetailView2();
        //print_r($metadataFile);//exit;
        $file = $metadataFile;
        $newMetadataFile = 'custom/modules/AOS_Products/metadata/detailviewdefs_manager.php';

        global $current_user;
        $arr = array(
            'manager'=>'Account Mgr',
        );
        require_once 'modules/ACLRoles/ACLRole.php';
        $roles = ACLRole::getUserRoles($current_user->id);
        //print_r($roles);
        foreach($arr as $k=>$role){
            if(in_array($role, $roles)){
                if (file_exists($newMetadataFile)) {
                    $metadataFile = $newMetadataFile;
                } else {
                    if (!copy($file, $newMetadataFile)) {
                        echo "failed to copy $file...\n";
                    } else {
                        $metadataFile = $newMetadataFile;
                    }
                }
                break;
            }
        }


        $this->dv->ss =&  $this->ss;
        //echo $metadataFile;
        $this->dv->setup($this->module, $this->bean, $metadataFile, get_custom_file_if_exists('include/DetailView/DetailView.tpl'));
    }

    function display() {

        parent::display();
    }

}