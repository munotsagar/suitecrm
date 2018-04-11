/**
 * Created by DELL on 27-Mar-18.
 */
$(document).ready(function () {
    var record = $("#record").val();
    $(".dateChange").on("change", function () {
        var selectedMonth = $("#monthId option:selected"). val();
        var selectedYear = $("#yearId option:selected"). val();

        window.location = "?action=DetailView&module=atomi_Invoice_Commission_Report&record="+record+"&year="+selectedYear+"&month="+selectedMonth;
    });

    $(".commisionClick").on("click", function () {
        var selectedMonth = $("#monthId option:selected"). val();
        var selectedYear = $("#yearId option:selected"). val();
        var day = $(this).attr("day-num");
        window.location = "?action=DetailView&module=atomi_Invoice_Commission_Report&record="+record+"&year="+selectedYear+"&month="+selectedMonth+"&day="+day;
    });

});