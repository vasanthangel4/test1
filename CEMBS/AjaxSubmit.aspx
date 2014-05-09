<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxSubmit.aspx.cs" Inherits="AjaxSubmit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery.js" type="text/javascript"></script>
    <script src="Scripts/Json2.js" type="text/javascript"></script>
</head>
<body>
    <div>
        Name:
        <input id="Text1" type="text" /><br />
        Phone:<input id="Text2" type="text" /><br />
        Mail:
        <input id="Text3" type="text" /><br />
        Message:
        <input id="Text4" type="text" /><input id="Submit1" type="submit" value="submit" />
    </div>
    <script type="text/javascript">
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
                phone:contact,
                message:message
            }
        };
        //var dataIn = '{' + '"name":"' + name + '"}';

        $(document).ready(function () {

            $.ajax({
                url: "AjaxService.svc/AjaxMail",
                type: "POST",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(myObject),
                dataType: "json",
                success: function (data) {
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
            $('#Submit1').click(function () {
                debugger
                //                $.ajax({
                //                    url: "AjaxService.svc/AjaxMail",
                //                    type: 'POST',
                //                    dataType: 'json',
                //                    data: { name: name, contact: contact, email: email, message: message },
                //                    success: function (data) {
                //                        alert(data.d);
                //                    },
                //                    error: function (err) {
                //                        alert(err);
                //                    }
                //                });



            });
        });
    </script>
</body>
</html>
