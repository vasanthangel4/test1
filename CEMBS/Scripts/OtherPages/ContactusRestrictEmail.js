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
    $('#layout_ContentPlaceholder_submit').attr("disabled", "disabled");


    if ($('#layout_ContentPlaceholder_resultLabel').val() == "Registration successful.<br/>Thankyou for showing interest.") {
        $('#maildiv').show('slow');
    }
    else if ($('#layout_ContentPlaceholder_resultLabel').val() == "Mail sending was not successful") {
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
    var ddlmailids = document.getElementById('layout_ContentPlaceholder_domainlist');
    for (i = 0; i < ddlmailids.options.length; i++) {
        getmailids[i] = ddlmailids.options[i].value;
    }
    //onchange event of textbox
    $(".mailtext").keyup(function () {
        //debugger
        var holdernametext = $('.mailtext').val();
        var firstname = holdernametext.split('@')[0];
        var lastname = holdernametext.split('@')[1];

        if (getmailids.inArray(lastname)) {
			alert('enter only official mail id');
            //$('#maildiv').show('slow');
            $('#layout_ContentPlaceholder_submit').attr("disabled", "disabled");
            //return false;
        }
        else {
            //$('#maildiv').hide('slow');
            $('#layout_ContentPlaceholder_submit').removeAttr("disabled");
        }
    });
});