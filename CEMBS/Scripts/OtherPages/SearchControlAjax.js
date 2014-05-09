$(document).ready(function () {
    $.ajax({ url: "Services/WebService.svc/keywords",
        type: "GET", contentType: "application/json;charset=utf-8",
        data: { prefix: $('#extendedmenu_search_search_txt').val() },
        dataType: "json", success: function (data) {
            var users = new Array();
            users = data.d;
            $(function () {
                $("#extendedmenu_search_search_txt").autocomplete({
                    source: users
                });
            });
        },
        error: function (error) {
            //alert("Slow connection or No connectivity"); 
        }
    });
});