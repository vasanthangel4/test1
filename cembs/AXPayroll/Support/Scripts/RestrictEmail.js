//using service for checking mail ids

// function to check values matching in array
Array.prototype.inArray = function (value) {
    // Returns true if the passed value is found in the
    // array. Returns false if it is not.
    var i;
    for (i = 0; i < this.length; i++) {
        if (this[i] == value) {
            return true;
        }
    }
    return false;
};
$(document).ready(function () {

    //$("#holdernameResult").hide();
    //var names = $('.names');
    $('#ContentPlaceHolder1_submit').attr("disabled", "disabled");


    if ($('#ContentPlaceHolder1_resultLabel').val() == "Mail sending was not successful") {
        $('#maildiv').show('slow');
    }
    else {
        $('#maildiv').hide('slow');
    }

    //create array getnames
    var getmailids = [];
    var getlastnames = [];
    var splittedfirstnames = [];

    //create variable ddl from dropdownlist
    var ddlmailids = document.getElementById('ContentPlaceHolder1_domainlist');
    for (i = 0; i < ddlmailids.options.length; i++) {
        getmailids[i] = ddlmailids.options[i].value;
    }
    //onchange event of textbox
    $(".mailtext").change(function () {
        //debugger
        var holdernametext = $('.mailtext').val();
        var firstname = holdernametext.split('@')[0];
        var lastname = holdernametext.split('@')[1];

        if (getmailids.inArray(lastname)) {
            $('#maildiv').show('slow');
            $('#ContentPlaceHolder1_submit').attr("disabled", "disabled");
            //return false;
        }
        else {
            $('#maildiv').hide('slow');
            $('#ContentPlaceHolder1_submit').removeAttr("disabled");
        }
    });

    $(".mailtext").keyup(function () {
        //debugger
        var holdernametext = $('.mailtext').val();
        var firstname = holdernametext.split('@')[0];
        var lastname = holdernametext.split('@')[1];

        if (getmailids.inArray(lastname)) {
            $('#maildiv').show('slow');
            $('#ContentPlaceHolder1_submit').attr("disabled", "disabled");
            //return false;
        }
        else {
            $('#maildiv').hide('slow');
            $('#ContentPlaceHolder1_submit').removeAttr("disabled");
        }
    });
});