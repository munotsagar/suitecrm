//alert("custom m here...");

$(document).ready(function () {

    $("#tier_0_c").attr("readonly", "readonly");
    $("input").on("blur", function () {
        calculateTierAmount();
    });

    $("select").on("change", function () {
        calculateTierAmount();
    });
});

function calculateTierAmount() {
    //$("#tax_c").on("blur", function () {
    /*var purchase_cost_c = parseFloat($("#purchase_cost_c").val());
    var tax_c = parseFloat($("#tax_c").val());

    if(purchase_cost_c >= 0 && tax_c >= 0) {
        var subCost = (purchase_cost_c * tax_c) / 100;
        var purcahse_sub_cost_c = (purchase_cost_c+subCost).toFixed(2);
        $("#purcahse_sub_cost_c").val(purcahse_sub_cost_c);
    }*/
    //});

    //$("#shipping_cost_c").on("blur", function () {
    //var purcahse_sub_cost_c = parseFloat($("#purcahse_sub_cost_c").val());

    var purchase_cost_c = parseFloat($("#purchase_cost_c").val());

    var shipping_cost_c = parseFloat($("#shipping_cost_c").val());

    if(purchase_cost_c >= 0 && shipping_cost_c >= 0) {
        var internal_purchase_cost_c = (purchase_cost_c + shipping_cost_c).toFixed(2);
        $("#internal_purchase_cost_c").val(internal_purchase_cost_c);
    }
    //});

    //$("#internal_mark_up_c").on("blur", function () {
    //alert("I am Here...");
    var internal_purchase_cost_c = parseFloat($("#internal_purchase_cost_c").val());
    var internal_mark_up_c = parseFloat($("#internal_mark_up_c").val());

    if(internal_purchase_cost_c >= 0 && internal_mark_up_c >= 0) {
        var sellingCost = (internal_purchase_cost_c * internal_mark_up_c) / 100;
        var selling_cost_c = (internal_purchase_cost_c+sellingCost).toFixed(2);
        $("#selling_cost_c").val(selling_cost_c);
        $("#tier_0_price_c").val(selling_cost_c);
    }
    //});

    //$("#tier_1_c").on("blur", function () {
    var selling_cost_c = parseFloat($("#selling_cost_c").val());
    var tier_1_c = parseFloat($("#tier_1_c").val());

    if(selling_cost_c >= 0 && tier_1_c >= 0) {
        var tier1Price = (selling_cost_c * tier_1_c) / 100;
        var tier_1_price_c = (selling_cost_c+tier1Price).toFixed(2);
        $("#tier_1_price_c").val(tier_1_price_c);
    }
    //});

    //$("#tier_1_c").on("blur", function () {
    var selling_cost_c = parseFloat($("#selling_cost_c").val());
    var tier_1_c = parseFloat($("#tier_1_c").val());

    if(selling_cost_c >= 0 && tier_1_c >= 0) {
        var tier1Price = (selling_cost_c * tier_1_c) / 100;
        var tier_1_price_c = (selling_cost_c+tier1Price).toFixed(2);
        $("#tier_1_price_c").val(tier_1_price_c);
    }
    //});

    //$("#tier_2_c").on("blur", function () {
    var selling_cost_c = parseFloat($("#selling_cost_c").val());
    var tier_2_c = parseFloat($("#tier_2_c").val());

    if(selling_cost_c >= 0 && tier_2_c >= 0) {
        var tier2Price = (selling_cost_c * tier_2_c) / 100;
        var tier_2_price_c = (selling_cost_c+tier2Price).toFixed(2);
        $("#tier_2_price_c").val(tier_2_price_c);
    }
    //});

    //$("#tier_3_c").on("blur", function () {
    var selling_cost_c = parseFloat($("#selling_cost_c").val());
    var tier_3_c = parseFloat($("#tier_3_c").val());

    if(selling_cost_c >= 0 && tier_3_c >= 0) {
        var tier3Price = (selling_cost_c * tier_3_c) / 100;
        var tier_3_price_c = (selling_cost_c+tier3Price).toFixed(2);
        $("#tier_3_price_c").val(tier_3_price_c);
    }
    //});

    //$("#tier_4_c").on("blur", function () {
    var selling_cost_c = parseFloat($("#selling_cost_c").val());
    var tier_4_c = parseFloat($("#tier_4_c").val());

    if(selling_cost_c >= 0 && tier_4_c >= 0) {
        var tier4Price = (selling_cost_c * tier_4_c) / 100;
        var tier_4_price_c = (selling_cost_c+tier4Price).toFixed(2);
        $("#tier_4_price_c").val(tier_4_price_c);
    }
    //});

    //$("#tier_5_c").on("blur", function () {
    var selling_cost_c = parseFloat($("#selling_cost_c").val());
    var tier_5_c = parseFloat($("#tier_5_c").val());

    if(selling_cost_c >= 0 && tier_5_c >= 0) {
        var tier5Price = (selling_cost_c * tier_5_c) / 100;
        var tier_5_price_c = (selling_cost_c+tier5Price).toFixed(2);
        $("#tier_5_price_c").val(tier_5_price_c);
    }
    //});
}