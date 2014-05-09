
var name = "naresh";
var contact = "989834";
var mail = "naresh@cembs.com";
var message = "testing";

var myObject =
        {
            person:
            {
                name: name,
                email: mail,
                phone: contact,
                message: message
            }
        };
//var dataIn = '{' + '"name":"' + name + '"}';

$(document).ready(function () {

    $('#feedback_submit').click(function () {
        alert('#feedback_submit').val();
        $.ajax({
            url: "AjaxService.svc/AjaxMail",
            type: "POST",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(myObject),
            dataType: "json",
            success: function (data) {
                alert(data.d);
                fm.clearInputs();
                var object = JSON.parse(data.d);
                if (object.Error == '') {
                    //Alert the persons name
                    alert(object.Name);
                }
            },
            error: function (error) {
                alert("Error: " + error.Error);
            }
        });

    });
});