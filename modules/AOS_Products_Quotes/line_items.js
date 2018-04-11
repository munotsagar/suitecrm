/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2016 SalesAgility Ltd.
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
 */

var lineno;
var prodln = 0;
var servln = 0;
var groupn = 0;
var group_ids = {};


/**
 * Load Line Items
 */

function insertLineItems(product,group){

    var type = 'product_';
    var ln = 0;
    var current_group = 'lineItems';
    var gid = product.group_id;

    if(typeof group_ids[gid] === 'undefined'){
        current_group = insertGroup();
        group_ids[gid] = current_group;
        for(var g in group){
            if(document.getElementById('group'+current_group + g) !== null){
                document.getElementById('group'+current_group + g).value = group[g];
            }
        }
    } else {
        current_group = group_ids[gid];
    }

    if(product.product_id != '0' && product.product_id !== ''){
        ln = insertProductLine('product_group'+current_group,current_group);
        type = 'product_';
    } else {
        ln = insertServiceLine('service_group'+current_group,current_group);
        type = 'service_';
    }

    for(var p in product){
        if(document.getElementById(type + p + ln) !== null){
            if(product[p] !== '' && isNumeric(product[p]) && p != 'vat'  && p != 'product_id' && p != 'name' && p != "part_number"){
                document.getElementById(type + p + ln).value = format2Number(product[p]);
            } else {
                document.getElementById(type + p + ln).value = product[p];
            }
        }
    }

    calculateLine(ln,type);

}


/**
 * Insert product line
 */

function insertProductLine(tableid, groupid) {

    if(!enable_groups){
        tableid = "product_group0";
    }

    if (document.getElementById(tableid + '_head') !== null) {
        document.getElementById(tableid + '_head').style.display = "";
    }

    var vat_hidden = document.getElementById("vathidden").value;
    var discount_hidden = document.getElementById("discounthidden").value;

    sqs_objects["product_name[" + prodln + "]"] = {
        "form": "EditView",
        "method": "query",
        "modules": ["AOS_Products"],
        "group": "or",
        "field_list": ["name", "id", "part_number", "cost", "price", "description", "currency_id"],
        "populate_list": ["product_name[" + prodln + "]", "product_product_id[" + prodln + "]", "product_part_number[" + prodln + "]", "product_product_cost_price[" + prodln + "]", "product_product_list_price[" + prodln + "]", "product_item_description[" + prodln + "]", "product_currency[" + prodln + "]"],
        "required_list": ["product_id[" + prodln + "]"],
        "conditions": [{
            "name": "name",
            "op": "like_custom",
            "end": "%",
            "value": ""
        }],
        "order": "name",
        "limit": "30",
        "post_onblur_function": "formatListPrice(" + prodln + ");",
        "no_match_text": "No Match"
    };
    sqs_objects["product_part_number[" + prodln + "]"] = {
        "form": "EditView",
        "method": "query",
        "modules": ["AOS_Products"],
        "group": "or",
        "field_list": ["part_number", "name", "id","cost", "price","description","currency_id"],
        "populate_list":  ["product_part_number[" + prodln + "]", "product_name[" + prodln + "]", "product_product_id[" + prodln + "]",  "product_product_cost_price[" + prodln + "]", "product_product_list_price[" + prodln + "]", "product_item_description[" + prodln + "]", "product_currency[" + prodln + "]"],
        "required_list": ["product_id[" + prodln + "]"],
        "conditions": [{
            "name": "part_number",
            "op": "like_custom",
            "end": "%",
            "value": ""
        }],
        "order": "name",
        "limit": "30",
        "post_onblur_function": "formatListPrice(" + prodln + ");",
        "no_match_text": "No Match"
    };

    /*sqs_objects["product_tier_5_price_c[" + prodln + "]"] = {
        "form": "EditView",
        "method": "query",
        "modules": ["AOS_Products"],
        "group": "or",
        "field_list": ["part_number", "name", "id","tier_5_price_c","tier_4_price_c","tier_3_price_c","tier_2_price_c","tier_1_price_c","tier_0_price_c","description"],
        "populate_list": ["product_part_number[" + prodln + "]", "product_name[" + prodln + "]", "product_product_id[" + prodln + "]", "product_product_tier_5_price_c[" + prodln + "]", "product_product_hidden_tier_5_price_c[" + prodln + "]",  "product_product_hidden_tier_4_price_c[" + prodln + "]",  "product_product_hidden_tier_3_price_c[" + prodln + "]",  "product_product_hidden_tier_2_price_c[" + prodln + "]",  "product_product_hidden_tier_1_price_c[" + prodln + "]",  "product_product_hidden_tier_0_price_c[" + prodln + "]", "product_item_description[" + prodln + "]"],
        "required_list": ["product_id[" + prodln + "]"],
        "conditions": [{
            "name": "tier_5_price_c",
            "op": "like_custom",
            "end": "%",
            "value": ""
        }],
        "order": "name",
        "limit": "30",
        "post_onblur_function": "formatListPrice(" + prodln + ");",
        "no_match_text": "No Match"
    };*/


    tablebody = document.createElement("tbody");
    tablebody.id = "product_body" + prodln;
    document.getElementById(tableid).appendChild(tablebody);


    var x = tablebody.insertRow(-1);
    x.id = 'product_line' + prodln;

    var a = x.insertCell(0);
    a.innerHTML = "<input type='text' name='product_product_qty[" + prodln + "]' id='product_product_qty" + prodln + "'  value='' title='' tabindex='116' onblur='Quantity_format2Number(" + prodln + ");calculateLine(" + prodln + ",\"product_\");' class='product_qty'>";

    var b2 = x.insertCell(1);
    b2.innerHTML = "<input class='sqsEnabled product_part_number' autocomplete='off' type='text' name='product_part_number[" + prodln + "]' id='product_part_number" + prodln + "' maxlength='50' value='' title='' tabindex='116' value=''>";

    var b = x.insertCell(2);
    b.innerHTML = "<input class='sqsEnabled product_name' autocomplete='off' type='text' name='product_name[" + prodln + "]' id='product_name" + prodln + "' maxlength='50' value='' title='' tabindex='116' value=''><input type='hidden' name='product_product_id[" + prodln + "]' id='product_product_id" + prodln + "'  maxlength='50' value=''><input type='hidden' name='product_product_unit_price[" + prodln + "]' id='product_product_unit_price" + prodln + "'  maxlength='50' value='0.00'><input type='hidden' name='product_product_hidden_tier_5_price_c[" + prodln + "]' id='product_product_hidden_tier_5_price_c" + prodln + "'  maxlength='50' value=''><input type='hidden' name='product_product_hidden_tier_4_price_c[" + prodln + "]' id='product_product_hidden_tier_4_price_c" + prodln + "'  maxlength='50' value=''><input type='hidden' name='product_product_hidden_tier_3_price_c[" + prodln + "]' id='product_product_hidden_tier_3_price_c" + prodln + "'  maxlength='50' value=''><input type='hidden' name='product_product_hidden_tier_2_price_c[" + prodln + "]' id='product_product_hidden_tier_2_price_c" + prodln + "'  maxlength='50' value=''><input type='hidden' name='product_product_hidden_tier_1_price_c[" + prodln + "]' id='product_product_hidden_tier_1_price_c" + prodln + "'  maxlength='50' value=''><input type='hidden' name='product_product_hidden_tier_0_price_c[" + prodln + "]' id='product_product_hidden_tier_0_price_c" + prodln + "'  maxlength='50' value=''>";

    var b1 = x.insertCell(3);
    b1.innerHTML = "<input class='sqsEnabled product_name' autocomplete='off' type='text' name='product_product_tier_5_price_c[" + prodln + "]' id='product_product_tier_5_price_c" + prodln + "' maxlength='50' value='' title='' tabindex='116' value=''>";

    if (typeof currencyFields !== 'undefined'){
        currencyFields.push("product_tier_5_price_c" + prodln);
    }


    var b3 = x.insertCell(4);
    b3.innerHTML = "<button title='" + SUGAR.language.get('app_strings', 'LBL_SELECT_BUTTON_TITLE') + "' accessKey='" + SUGAR.language.get('app_strings', 'LBL_SELECT_BUTTON_KEY') + "' type='button' tabindex='116' class='button product_part_number_button' value='" + SUGAR.language.get('app_strings', 'LBL_SELECT_BUTTON_LABEL') + "' name='btn1' onclick='openProductPopup(" + prodln + ");'><img src='themes/"+SUGAR.themes.theme_name+"/images/id-ff-select.png' alt='" + SUGAR.language.get('app_strings', 'LBL_SELECT_BUTTON_LABEL') + "'></button>";

    var b4 = x.insertCell(5);
    b4.innerHTML = "<select onchange='tierSelection(this, "+prodln+")' class='sqsEnabled product_name' autocomplete='off' name='product_tier_c[" + prodln + "]' id='product_tier" + prodln + "' ><option value='Tier 5'>Tier 5</option><option value='Tier 4'>Tier 4</option><option value='Tier 3'>Tier 3</option><option value='Tier 2'>Tier 2</option><option value='Tier 1'>Tier 1</option><option value='Tier 0'>Tier 0</option> </select>";

    var b4 = x.insertCell(6);
    b4.innerHTML = "<input class='sqsEnabled product_qty' autocomplete='off' type='text' name='product_product_discount_amount[" + prodln + "]' id='product_product_discount_amount" + prodln + "' onblur='calculateLine(" + prodln + ",\"product_\");'  maxlength='50' value='0.00' title='' tabindex='116' value=''>";



    var b4 = x.insertCell(7);
    b4.innerHTML = "<input class='sqsEnabled product_qty' autocomplete='off' type='text' name='product_tax_percentage_c[" + prodln + "]' id='product_tax_percentage" + prodln + "' maxlength='50' title='' tabindex='116' value='0.00' onblur='calculateLine(" + prodln + ",\"product_\");'>";


    var b4 = x.insertCell(8);
    b4.innerHTML = "<input class='sqsEnabled product_qty' autocomplete='off' type='text' name='product_tax_amount_c[" + prodln + "]' id='product_tax_amount" + prodln + "' maxlength='50' title='' tabindex='116' value='0.00' onblur='calculateLine(" + prodln + ",\"product_\");'>";


    var g = x.insertCell(9);
    g.innerHTML = "<input type='text' name='product_product_total_price[" + prodln + "]' id='product_product_total_price" + prodln + "' maxlength='50' value='0.00' title='' tabindex='116' readonly='readonly' class='product_total_price'><input type='hidden' name='product_group_number[" + prodln + "]' id='product_group_number" + prodln + "' value='"+groupid+"'>";

    if (typeof currencyFields !== 'undefined'){
        currencyFields.push("product_product_total_price" + prodln);
    }
    var h = x.insertCell(10);
    h.innerHTML = "<input type='hidden' name='product_currency[" + prodln + "]' id='product_currency" + prodln + "' value=''><input type='hidden' name='product_deleted[" + prodln + "]' id='product_deleted" + prodln + "' value='0'><input type='hidden' name='product_id[" + prodln + "]' id='product_id" + prodln + "' value=''><button type='button' id='product_delete_line" + prodln + "' class='button product_delete_line' value='" + SUGAR.language.get(module_sugar_grp1, 'LBL_REMOVE_PRODUCT_LINE') + "' tabindex='116' onclick='markLineDeleted(" + prodln + ",\"product_\")'><img src='themes/"+SUGAR.themes.theme_name+"/images/id-ff-clear.png' alt='" + SUGAR.language.get(module_sugar_grp1, 'LBL_REMOVE_PRODUCT_LINE') + "'></button><br>";


    enableQS(true);
    //QSFieldsArray["EditView_product_name"+prodln].forceSelection = true;

    var y = tablebody.insertRow(-1);
    y.id = 'product_note_line' + prodln;

    var h1 = y.insertCell(0);
    h1.colSpan = "5";
    h1.style.color = "rgb(68,68,68)";
    h1.innerHTML = "<span style='vertical-align: top;' class='product_item_description_label'>" + SUGAR.language.get(module_sugar_grp1, 'LBL_PRODUCT_DESCRIPTION') + " :&nbsp;&nbsp;</span>";
    h1.innerHTML += "<textarea tabindex='116' name='product_item_description[" + prodln + "]' id='product_item_description" + prodln + "' rows='2' cols='23' class='product_item_description'></textarea>&nbsp;&nbsp;";

    var i = y.insertCell(1);
    i.colSpan = "5";
    i.style.color = "rgb(68,68,68)";
    i.innerHTML = "<span style='vertical-align: top;' class='product_description_label'>"  + SUGAR.language.get(module_sugar_grp1, 'LBL_PRODUCT_NOTE') + " :&nbsp;</span>";
    i.innerHTML += "<textarea tabindex='116' name='product_description[" + prodln + "]' id='product_description" + prodln + "' rows='2' cols='23' class='product_description'></textarea>&nbsp;&nbsp;"

    addToValidate('EditView','product_product_id'+prodln,'id',true,"Please choose a product");

    addAlignedLabels(prodln, 'product');

    prodln++;

    return prodln - 1;
}


function tierSelection(t, prodln) {

    var tierData = { "Tier 5" : "product_product_hidden_tier_5_price_c", "Tier 4" : "product_product_hidden_tier_4_price_c", "Tier 3" : "product_product_hidden_tier_3_price_c", "Tier 2" : "product_product_hidden_tier_2_price_c", "Tier 1" : "product_product_hidden_tier_1_price_c", "Tier 0" : "product_product_hidden_tier_0_price_c" };
    $("#product_product_tier_5_price_c"+prodln).val(format2Number($("#"+tierData[t.value]+prodln).val()));
    calculateLine(prodln, "product_");
}

/**
 * Insert product Header
 */

function insertProductHeader(tableid){
    tablehead = document.createElement("thead");
    tablehead.id = tableid +"_head";
    tablehead.style.display="none";
    document.getElementById(tableid).appendChild(tablehead);

    var x=tablehead.insertRow(-1);
    x.id='product_head';

    var a=x.insertCell(0);
    a.style.color="rgb(68,68,68)";
    //alert(module_sugar_grp1);
    a.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_PRODUCT_QUANITY');

    var b2=x.insertCell(1);
    b2.style.color="rgb(68,68,68)";
    b2.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_PART_NUMBER');

    var b=x.insertCell(2);
    b.style.color="rgb(68,68,68)";
    b.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_PRODUCT_NAME');

    var b1=x.insertCell(3);
    b1.colSpan = "2";
    b1.style.color="rgb(68,68,68)";
    b1.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_SELLING_COST');

    var b3=x.insertCell(4);
    b3.style.color="rgb(68,68,68)";
    b3.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_PRODUCT_TIER');

    var b6=x.insertCell(5);
    b6.style.color="rgb(68,68,68)";
    b6.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_PRODUCT_DISCOUNT');

    var b4=x.insertCell(6);
    b4.style.color="rgb(68,68,68)";
    b4.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_PRODUCT_TAX_PERCENTAGE');

    var b5=x.insertCell(7);
    b5.style.color="rgb(68,68,68)";
    b5.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_PRODUCT_TAX_AMOUNT');


    var g=x.insertCell(8);
    g.style.color="rgb(68,68,68)";
    g.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_TOTAL_PRICE');

    var h=x.insertCell(9);
    h.style.color="rgb(68,68,68)";
    h.innerHTML='&nbsp;';
}


var addAlignedLabels = function(ln, type) {
    if(typeof type == 'undefined') {
        type = 'product';
    }
    if(type != 'product' && type != 'service') {
        console.error('type could be "product" or "service" only');
    }
    var labels = [];
    $('tr#'+type+'_head td').each(function(i,e){
        if(type=='product' && $(e).attr('colspan')>1) {
            for(var i=0; i<parseInt($(e).attr('colspan')); i++) {
                if(i==0) {
                    labels.push($(e).html());
                } else {
                    labels.push('');
                }
            }
        } else {
            labels.push($(e).html());
        }
    });
    $('tr#'+type+'_line'+ln+' td').each(function(i,e){
        $(e).prepend('<span class="alignedLabel">'+labels[i]+'</span>');
    });
}


/**
 * Open product popup
 */
function openProductPopup(ln){
//
    //'initial_filter' : '&type="Good"',
    lineno=ln;
    var popupRequestData = {
        "call_back_function" : "setProductReturn",
        "form_name" : "EditView",
        "field_to_name_array" : {
            "id" : "product_product_id" + ln,
            "name" : "product_name" + ln,
            "description" : "product_item_description" + ln,
            "part_number" : "product_part_number" + ln,
            "tier_5_price_c" : "product_product_tier_5_price_c" + ln,
            "tier_5_price_hidden_c" : "product_product_hidden_tier_5_price_c" + ln,
            "tier_4_price_c" : "product_product_hidden_tier_4_price_c" + ln,
            "tier_3_price_c" : "product_product_hidden_tier_3_price_c" + ln,
            "tier_2_price_c" : "product_product_hidden_tier_2_price_c" + ln,
            "tier_1_price_c" : "product_product_hidden_tier_1_price_c" + ln,
            "tier_0_price_c" : "product_product_hidden_tier_0_price_c" + ln
        }
    };

    open_popup('AOS_Products', 800, 850, '&type=Good', true, true, popupRequestData);

}

function setProductReturn(popupReplyData){
    set_return(popupReplyData);
    formatListPrice(lineno);
}

function formatListPrice(ln){

    if (typeof currencyFields !== 'undefined'){
        var product_product_tier_5_price_c = document.getElementById('product_product_tier_5_price_c' + ln).value;
        document.getElementById('product_product_tier_5_price_c' + ln).value = format2Number(ConvertFromDollar(product_product_tier_5_price_c, lastRate));
    }
    else
    {
        document.getElementById('product_product_list_price' + ln).value = format2Number(document.getElementById('product_product_list_price' + ln).value);
        document.getElementById('product_product_cost_price' + ln).value = format2Number(document.getElementById('product_product_cost_price' + ln).value);
    }

    calculateLine(ln,"product_");
}


/**
 * Insert Service Line
 */

function insertServiceLine(tableid, groupid) {

    if(!enable_groups){
        tableid = "service_group0";
    }
    if (document.getElementById(tableid + '_head') !== null) {
        document.getElementById(tableid + '_head').style.display = "";
    }

    var vat_hidden = document.getElementById("vathidden").value;
    var discount_hidden = document.getElementById("discounthidden").value;

    tablebody = document.createElement("tbody");
    tablebody.id = "service_body" + servln;
    document.getElementById(tableid).appendChild(tablebody);

    var x = tablebody.insertRow(-1);
    x.id = 'service_line' + servln;

    var a = x.insertCell(0);
    a.colSpan = "4";
    a.innerHTML = "<textarea name='service_name[" + servln + "]' id='service_name" + servln + "'  cols='64' title='' tabindex='116' class='service_name'></textarea><input type='hidden' name='service_product_id[" + servln + "]' id='service_product_id" + servln + "'  maxlength='50' value='0'>";

    var a1 = x.insertCell(1);
    a1.innerHTML = "<input type='text' name='service_product_list_price[" + servln + "]' id='service_product_list_price" + servln + "' maxlength='50' value='' title='' tabindex='116'   onblur='calculateLine(" + servln + ",\"service_\");' class='service_list_price'>";

    if (typeof currencyFields !== 'undefined'){
        currencyFields.push("service_product_list_price" + servln);
    }

    var a2 = x.insertCell(2);
    a2.innerHTML = "<input type='text' name='service_product_discount[" + servln + "]' id='service_product_discount" + servln + "'  maxlength='50' value='' title='' tabindex='116' onblur='calculateLine(" + servln + ",\"service_\");' onblur='calculateLine(" + servln + ",\"service_\");' class='service_discount_text'><input type='hidden' name='service_product_discount_amount[" + servln + "]' id='service_product_discount_amount" + servln + "' value=''/>";
    a2.innerHTML += "<select tabindex='116' name='service_discount[" + servln + "]' id='service_discount" + servln + "' onchange='calculateLine(" + servln + ",\"service_\");' class='service_discount_select'>" + discount_hidden + "</select>";

    var b = x.insertCell(3);
    b.innerHTML = "<input type='text' name='service_product_unit_price[" + servln + "]' id='service_product_unit_price" + servln + "' maxlength='50' value='' title='' tabindex='116'   onblur='calculateLine(" + servln + ",\"service_\");' class='service_unit_price'>";

    if (typeof currencyFields !== 'undefined'){
        currencyFields.push("service_product_unit_price" + servln);
    }
    var c = x.insertCell(4);
    c.innerHTML = "<input type='text' name='service_vat_amt[" + servln + "]' id='service_vat_amt" + servln + "' maxlength='250' value='' title='' tabindex='116' readonly='readonly' class='service_vat_text'>";
    c.innerHTML += "<select tabindex='116' name='service_vat[" + servln + "]' id='service_vat" + servln + "' onchange='calculateLine(" + servln + ",\"service_\");' class='service_vat_select'>" + vat_hidden + "</select>";
    if (typeof currencyFields !== 'undefined'){
        currencyFields.push("service_vat_amt" + servln);
    }

    var e = x.insertCell(5);
    e.innerHTML = "<input type='text' name='service_product_total_price[" + servln + "]' id='service_product_total_price" + servln + "' maxlength='50' value='' title='' tabindex='116' readonly='readonly' class='service_total_price'><input type='hidden' name='service_group_number[" + servln + "]' id='service_group_number" + servln + "' value='"+ groupid +"'>";

    if (typeof currencyFields !== 'undefined'){
        currencyFields.push("service_product_total_price" + servln);
    }
    var f = x.insertCell(6);
    f.innerHTML = "<input type='hidden' name='service_deleted[" + servln + "]' id='service_deleted" + servln + "' value='0'><input type='hidden' name='service_id[" + servln + "]' id='service_id" + servln + "' value=''><button type='button' class='button service_delete_line' id='service_delete_line" + servln + "' value='" + SUGAR.language.get(module_sugar_grp1, 'LBL_REMOVE_PRODUCT_LINE') + "' tabindex='116' onclick='markLineDeleted(" + servln + ",\"service_\")'><img src='themes/"+SUGAR.themes.theme_name+"/images/id-ff-clear.png' alt='" + SUGAR.language.get(module_sugar_grp1, 'LBL_REMOVE_PRODUCT_LINE') + "'></button><br>";

    addAlignedLabels(servln, 'service');

    servln++;

    return servln - 1;
}




/**
 * Insert service Header
 */

function insertServiceHeader(tableid){
    tablehead = document.createElement("thead");
    tablehead.id = tableid +"_head";
    tablehead.style.display="none";
    document.getElementById(tableid).appendChild(tablehead);

    var x=tablehead.insertRow(-1);
    x.id='service_head';

    var a=x.insertCell(0);
    a.colSpan = "4";
    a.style.color="rgb(68,68,68)";
    a.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_SERVICE_NAME');

    var b=x.insertCell(1);
    b.style.color="rgb(68,68,68)";
    b.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_SERVICE_LIST_PRICE');

    var c=x.insertCell(2);
    c.style.color="rgb(68,68,68)";
    c.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_SERVICE_DISCOUNT');

    var d=x.insertCell(3);
    d.style.color="rgb(68,68,68)";
    d.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_SERVICE_PRICE');

    var e=x.insertCell(4);
    e.style.color="rgb(68,68,68)";
    e.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_VAT_AMT');

    var f=x.insertCell(5);
    f.style.color="rgb(68,68,68)";
    f.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_TOTAL_PRICE');

    var g=x.insertCell(6);
    g.style.color="rgb(68,68,68)";
    g.innerHTML='&nbsp;';
}

/**
 * Insert Group
 */

function insertGroup()
{

    if(!enable_groups && groupn > 0){
        return;
    }
    var tableBody = document.createElement("tr");
    tableBody.id = "group_body"+groupn;
    tableBody.className = "group_body";
    document.getElementById('lineItems').appendChild(tableBody);

    var a=tableBody.insertCell(0);
    a.colSpan="100";
    var table = document.createElement("table");
    table.id = "group"+groupn;
    table.className = "group";

    table.style.whiteSpace = 'nowrap';

    a.appendChild(table);



    tableheader = document.createElement("thead");
    table.appendChild(tableheader);
    var header_row=tableheader.insertRow(-1);


    if(enable_groups){
        var header_cell = header_row.insertCell(0);
        header_cell.scope="row";
        header_cell.colSpan="8";
        header_cell.innerHTML=SUGAR.language.get(module_sugar_grp1, 'LBL_GROUP_NAME')+":&nbsp;&nbsp;<input name='group_name[]' id='"+ table.id +"name' maxlength='255'  title='' tabindex='120' type='text' class='group_name'><input type='hidden' name='group_id[]' id='"+ table.id +"id' value=''><input type='hidden' name='group_group_number[]' id='"+ table.id +"group_number' value='"+groupn+"'>";

        var header_cell_del = header_row.insertCell(1);
        header_cell_del.scope="row";
        header_cell_del.colSpan="2";
        header_cell_del.innerHTML="<span title='" + SUGAR.language.get(module_sugar_grp1, 'LBL_DELETE_GROUP') + "' style='float: right;'><a style='cursor: pointer;' id='deleteGroup' tabindex='116' onclick='markGroupDeleted("+groupn+")' class='delete_group'><img src='themes/"+SUGAR.themes.theme_name+"/images/id-ff-clear.png' alt='X'></a></span><input type='hidden' name='group_deleted[]' id='"+ table.id +"deleted' value='0'>";
    }



    var productTableHeader = document.createElement("thead");
    table.appendChild(productTableHeader);
    var productHeader_row=productTableHeader.insertRow(-1);
    var productHeader_cell = productHeader_row.insertCell(0);
    productHeader_cell.colSpan="100";
    var productTable = document.createElement("table");
    productTable.id = "product_group"+groupn;
    productTable.className = "product_group";
    productHeader_cell.appendChild(productTable);

    insertProductHeader(productTable.id);

    var serviceTableHeader = document.createElement("thead");
    table.appendChild(serviceTableHeader);
    var serviceHeader_row=serviceTableHeader.insertRow(-1);
    var serviceHeader_cell = serviceHeader_row.insertCell(0);
    serviceHeader_cell.colSpan="100";
    var serviceTable = document.createElement("table");
    serviceTable.id = "service_group"+groupn;
    serviceTable.className = "service_group";
    serviceHeader_cell.appendChild(serviceTable);

    insertServiceHeader(serviceTable.id);


    tablefooter = document.createElement("tfoot");
    table.appendChild(tablefooter);
    var footer_row=tablefooter.insertRow(-1);
    var footer_cell = footer_row.insertCell(0);
    footer_cell.scope="row";
    footer_cell.colSpan="20";
    footer_cell.innerHTML="<input type='button' tabindex='116' class='button add_product_line' value='"+SUGAR.language.get(module_sugar_grp1, 'LBL_ADD_PRODUCT_LINE')+"' id='"+productTable.id+"addProductLine' onclick='insertProductLine(\""+productTable.id+"\",\""+groupn+"\")' />";
    footer_cell.innerHTML+=" <input type='button' tabindex='116' class='button add_service_line' value='"+SUGAR.language.get(module_sugar_grp1, 'LBL_ADD_SERVICE_LINE')+"' id='"+serviceTable.id+"addServiceLine' onclick='insertServiceLine(\""+serviceTable.id+"\",\""+groupn+"\")' />";
    if(enable_groups){
        footer_cell.innerHTML+="<span class='totals'><label>"+SUGAR.language.get(module_sugar_grp1, 'LBL_TOTAL_AMT')+":</label><input name='group_total_amt[]' id='"+ table.id +"total_amt' class='group_total_amt' maxlength='26' value='' title='' tabindex='120' type='text' readonly></span>";

        var footer_row2=tablefooter.insertRow(-1);
        var footer_cell2 = footer_row2.insertCell(0);
        footer_cell2.scope="row";
        footer_cell2.colSpan="20";
        footer_cell2.innerHTML="<span class='totals'><label>"+SUGAR.language.get(module_sugar_grp1, 'LBL_DISCOUNT_AMOUNT')+":</label><input name='group_discount_amount[]' id='"+ table.id +"discount_amount' class='group_discount_amount' maxlength='26' value='' title='' tabindex='120' type='text' readonly></label>";

        var footer_row3=tablefooter.insertRow(-1);
        var footer_cell3 = footer_row3.insertCell(0);
        footer_cell3.scope="row";
        footer_cell3.colSpan="20";
        footer_cell3.innerHTML="<span class='totals'><label>"+SUGAR.language.get(module_sugar_grp1, 'LBL_SUBTOTAL_AMOUNT')+":</label><input name='group_subtotal_amount[]' id='"+ table.id +"subtotal_amount' class='group_subtotal_amount'  maxlength='26' value='' title='' tabindex='120' type='text' readonly></span>";

        var footer_row4=tablefooter.insertRow(-1);
        var footer_cell4 = footer_row4.insertCell(0);
        footer_cell4.scope="row";
        footer_cell4.colSpan="20";
        footer_cell4.innerHTML="<span class='totals'><label>"+SUGAR.language.get(module_sugar_grp1, 'LBL_TAX_AMOUNT')+":</label><input name='group_tax_amount[]' id='"+ table.id +"tax_amount' class='group_tax_amount' maxlength='26' value='' title='' tabindex='120' type='text' readonly></span>";

        if(document.getElementById('subtotal_tax_amount') !== null){
            var footer_row5=tablefooter.insertRow(-1);
            var footer_cell5 = footer_row5.insertCell(0);
            footer_cell5.scope="row";
            footer_cell5.colSpan="20";
            footer_cell5.innerHTML="<span class='totals'><label>"+SUGAR.language.get(module_sugar_grp1, 'LBL_SUBTOTAL_TAX_AMOUNT')+":</label><input name='group_subtotal_tax_amount[]' id='"+ table.id +"subtotal_tax_amount' class='group_subtotal_tax_amount' maxlength='26' value='' title='' tabindex='120' type='text' readonly></span>";

            if (typeof currencyFields !== 'undefined'){
                currencyFields.push("" + table.id+ 'subtotal_tax_amount');
            }
        }

        var footer_row6=tablefooter.insertRow(-1);
        var footer_cell6 = footer_row6.insertCell(0);
        footer_cell6.scope="row";
        footer_cell6.colSpan="20";
        footer_cell6.innerHTML="<span class='totals'><label>"+SUGAR.language.get(module_sugar_grp1, 'LBL_GROUP_TOTAL')+":</label><input name='group_total_amount[]' id='"+ table.id +"total_amount' class='group_total_amount'  maxlength='26' value='' title='' tabindex='120' type='text' readonly></span>";

        if (typeof currencyFields !== 'undefined'){
            currencyFields.push("" + table.id+ 'total_amt');
            currencyFields.push("" + table.id+ 'discount_amount');
            currencyFields.push("" + table.id+ 'subtotal_amount');
            currencyFields.push("" + table.id+ 'tax_amount');
            currencyFields.push("" + table.id+ 'total_amount');
        }
    }
    groupn++;
    return groupn -1;
}

/**
 * Mark Group Deleted
 */

function markGroupDeleted(gn)
{
    document.getElementById('group_body' + gn).style.display = 'none';

    var rows = document.getElementById('group_body' + gn).getElementsByTagName('tbody');

    for (x=0; x < rows.length; x++) {
        var input = rows[x].getElementsByTagName('button');
        for (y=0; y < input.length; y++) {
            if (input[y].id.indexOf('delete_line') != -1) {
                input[y].click();
            }
        }
    }

}

/**
 * Mark line deleted
 */

function markLineDeleted(ln, key)
{
    // collapse line; update deleted value
    document.getElementById(key + 'body' + ln).style.display = 'none';
    document.getElementById(key + 'deleted' + ln).value = '1';
    document.getElementById(key + 'delete_line' + ln).onclick = '';
    var groupid = 'group' + document.getElementById(key + 'group_number' + ln).value;

    if(checkValidate('EditView',key+'product_id' +ln)){
        removeFromValidate('EditView',key+'product_id' +ln);
    }

    calculateTotal(groupid);
    calculateTotal();
}


/**
 * Calculate Line Values
 */

function calculateLine(ln, key){

    /*var required = 'product_list_price';
    if(document.getElementById(key + required + ln) === null){
        required = 'product_unit_price';
    }*/
    //alert(key)
    if (document.getElementById(key + 'name' + ln).value === ''){
        return;
    }

    if(key === "product_" && document.getElementById(key + 'product_qty' + ln) !== null && document.getElementById(key + 'product_qty' + ln).value === ''){
        document.getElementById(key + 'product_qty' + ln).value =1;
        Quantity_format2Number(ln);
    }



    var productUnitPrice = 0;
    if(document.getElementById(key + 'product_tier_5_price_c' + ln) !== null){
        var productUnitPrice = formatNumber(document.getElementById(key + 'product_tier_5_price_c' + ln).value);
        //alert("productUnitPrice : "+productUnitPrice);
    }
    var productQty = 1;
    if(document.getElementById(key + 'product_qty' + ln) !== null){
        productQty = document.getElementById(key + 'product_qty' + ln).value;
    }
    //alert("productQty : "+productQty)
    var taxPercentage = 0;
    if(document.getElementById(key + 'tax_percentage' + ln) !== null){
        taxPercentage = format2Number(document.getElementById(key + 'tax_percentage' + ln).value);
    }

    var taxAmount = 0;
    if(document.getElementById(key + 'tax_amount' + ln) !== null){
        taxAmount = document.getElementById(key + 'tax_amount' + ln).value;
    }

    var productAdjestment = 0;
    if(document.getElementById(key + 'product_discount_amount' + ln) !== null){
        productAdjestment = format2Number(document.getElementById(key + 'product_discount_amount' + ln).value);
    }


    //var vat = unformatNumber(document.getElementById(key + 'vat' + ln).value,',','.');

    //alert("productUnitPrice : "+unformat2Number(productUnitPrice));
    //alert(productUnitPrice);
    var productTotalPrice = (productQty * unformat2Number(productUnitPrice));
    //alert("productTotalPrice : "+productTotalPrice);

    var productTaxTotal = 0;
    if(taxPercentage > 0) {
        productTaxTotal = (productTotalPrice * taxPercentage) / 100;
    }

    if(productAdjestment > 0) {
        productTotalPrice = unformat2Number(productTotalPrice) - unformat2Number(productAdjestment);
    }
    //alert(productTotalPrice);
    if(productTaxTotal !== null){
        document.getElementById(key + 'tax_amount' + ln).value = format2Number(productTaxTotal);
    }


    //var taxAmount = 0;
    if(document.getElementById(key + 'tax_amount' + ln) !== null){
        console.log("productTotalPrice : "+productTotalPrice);
        console.log("taxAmount : "+taxAmount);
        productTotalPrice = unformat2Number(productTotalPrice) + unformat2Number(document.getElementById(key + 'tax_amount' + ln).value);
        console.log("In If"+productTotalPrice)
    }
    console.log(format2Number(productTotalPrice));

    document.getElementById(key + 'product_total_price' + ln).value = format2Number(productTotalPrice);

    var groupid = 0;
    if(enable_groups){
        groupid = document.getElementById(key + 'group_number' + ln).value;
    }
    groupid = 'group' + groupid;

    calculateTotal(groupid);
    calculateTotal();

}

function calculateAllLines() {
    $('.product_group').each(function(productGroupkey, productGroupValue) {
        $(productGroupValue).find('tbody').each(function(productKey, productValue) {
                calculateLine(productKey, "product_");
        });
    });

    $('.service_group').each(function(serviceGroupkey, serviceGroupValue) {
        $(serviceGroupValue).find('tbody').each(function(serviceKey, serviceValue) {
            calculateLine(serviceKey, "service_");
        });
    });
}

/**
 * Calculate totals
 */
function calculateTotal(key)
{
    if (typeof key === 'undefined') {  key = 'lineItems'; }
    var row = document.getElementById(key).getElementsByTagName('tbody');
    if(key == 'lineItems') key = '';
    var length = row.length;
    var head = {};
    var tot_amt = 0;
    var subtotal = 0;
    var dis_tot = 0;
    var tax = 0;

    for (i=0; i < length; i++) {
        var qty = 1;
        var list = null;
        var unit = 0;
        var deleted = 0;
        var dis_amt = 0;
        var product_vat_amt = 0;

        var input = row[i].getElementsByTagName('input');
        for (j=0; j < input.length; j++) {
            if (input[j].id.indexOf('product_qty') != -1) {
                qty = unformat2Number(input[j].value);
            }
            if (input[j].id.indexOf('product_product_tier_5_price_c') != -1)
            {
                list = unformat2Number(input[j].value);
            }
            if (input[j].id.indexOf('product_unit_price') != -1)
            {
                unit = unformat2Number(input[j].value);
            }
            if (input[j].id.indexOf('product_discount_amount') != -1)
            {
                dis_amt = unformat2Number(input[j].value);
            }
            if (input[j].id.indexOf('product_tax_amount') != -1)
            {
                product_vat_amt = unformat2Number(input[j].value);
            }
            if (input[j].id.indexOf('deleted') != -1) {
                deleted = input[j].value;
            }

        }

        if(deleted != 1 && key !== ''){
            head[row[i].parentNode.id] = 1;
        } else if(key !== '' && head[row[i].parentNode.id] != 1){
            head[row[i].parentNode.id] = 0;
        }

        if (qty !== 0 && list !== null && deleted != 1) {
            tot_amt += list * qty;
        } /*else if (qty !== 0 && unit !== 0 && deleted != 1) {
            tot_amt += unit * qty;
        }*/

        if (dis_amt !== 0 && deleted != 1) {
            dis_tot += dis_amt * qty;
        }
        if (product_vat_amt !== 0 && deleted != 1) {
            tax += product_vat_amt;
        }
    }

    for(var h in head){
        if (head[h] != 1 && document.getElementById(h + '_head') !== null) {
            document.getElementById(h + '_head').style.display = "none";
        }
    }

    subtotal = tot_amt + dis_tot;

    set_value(key+'total_amt',tot_amt);
    set_value(key+'subtotal_amount',subtotal);
    set_value(key+'discount_amount',dis_tot);

    var shipping = get_value(key+'shipping_amount');

    var shippingtax = get_value(key+'shipping_tax');

    var shippingtax_amt = shipping * (shippingtax/100);

    set_value(key+'shipping_tax_amt',shippingtax_amt);

    tax += shippingtax_amt;

    set_value(key+'tax_amount',tax);

    set_value(key+'subtotal_tax_amount',subtotal + tax);
    set_value(key+'total_amount',subtotal + tax + shipping);
}

function set_value(id, value){
    if(document.getElementById(id) !== null)
    {
        document.getElementById(id).value = format2Number(value);
    }
}

function get_value(id){
    if(document.getElementById(id) !== null)
    {
        return unformat2Number(document.getElementById(id).value);
    }
    return 0;
}


function unformat2Number(num)
{
    return unformatNumber(num, num_grp_sep, dec_sep);
}

function format2Number(str, sig)
{
    if (typeof sig === 'undefined') { sig = sig_digits; }
    num = Number(str);
    if(sig == 2){
        str = formatCurrency(num);
    }
    else{
        str = num.toFixed(sig);
    }

    str = str.split(/,/).join('{,}').split(/\./).join('{.}');
    str = str.split('{,}').join(num_grp_sep).split('{.}').join(dec_sep);

    return str;
}

function formatCurrency(strValue)
{
    strValue = strValue.toString().replace(/\$|\,/g,'');
    dblValue = parseFloat(strValue);

    blnSign = (dblValue == (dblValue = Math.abs(dblValue)));
    dblValue = Math.floor(dblValue*100+0.50000000001);
    intCents = dblValue%100;
    strCents = intCents.toString();
    dblValue = Math.floor(dblValue/100).toString();
    if(intCents<10)
        strCents = "0" + strCents;
    for (var i = 0; i < Math.floor((dblValue.length-(1+i))/3); i++)
        dblValue = dblValue.substring(0,dblValue.length-(4*i+3))+','+
            dblValue.substring(dblValue.length-(4*i+3));
    return (((blnSign)?'':'-') + dblValue + '.' + strCents);
}

function Quantity_format2Number(ln)
{
    var str = '';
    var qty=unformat2Number(document.getElementById('product_product_qty' + ln).value);
    if(qty === null){qty = 1;}

    if(qty === 0){
        str = '0';
    } else {
        str = format2Number(qty);
        if(sig_digits){
            str = str.replace(/0*$/,'');
            str = str.replace(dec_sep,'~');
            str = str.replace(/~$/,'');
            str = str.replace('~',dec_sep);
        }
    }

    document.getElementById('product_product_qty' + ln).value=str;
}

function formatNumber(n, num_grp_sep, dec_sep, round, precision) {
    if (typeof num_grp_sep == "undefined" || typeof dec_sep == "undefined") {
        return n;
    }
    if(n === 0) n = '0';

    n = n ? n.toString() : "";
    if (n.split) {
        n = n.split(".");
    } else {
        return n;
    }
    if (n.length > 2) {
        return n.join(".");
    }
    if (typeof round != "undefined") {
        if (round > 0 && n.length > 1) {
            n[1] = parseFloat("0." + n[1]);
            n[1] = Math.round(n[1] * Math.pow(10, round)) / Math.pow(10, round);
            n[1] = n[1].toString().split(".")[1];
        }
        if (round <= 0) {
            n[0] = Math.round(parseInt(n[0], 10) * Math.pow(10, round)) / Math.pow(10, round);
            n[1] = "";
        }
    }
    if (typeof precision != "undefined" && precision >= 0) {
        if (n.length > 1 && typeof n[1] != "undefined") {
            n[1] = n[1].substring(0, precision);
        } else {
            n[1] = "";
        }
        if (n[1].length < precision) {
            for (var wp = n[1].length; wp < precision; wp++) {
                n[1] += "0";
            }
        }
    }
    regex = /(\d+)(\d{3})/;
    while (num_grp_sep !== "" && regex.test(n[0])) {
        n[0] = n[0].toString().replace(regex, "$1" + num_grp_sep + "$2");
    }
    return n[0] + (n.length > 1 && n[1] !== "" ? dec_sep + n[1] : "");
}

function check_form(formname) {
    calculateAllLines();
    if (typeof(siw) != 'undefined' && siw && typeof(siw.selectingSomething) != 'undefined' && siw.selectingSomething)
        return false;
    return validate_form(formname, '');
}