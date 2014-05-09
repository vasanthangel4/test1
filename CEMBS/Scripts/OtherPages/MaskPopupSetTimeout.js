function Nowme() {
    //Cancel the link behavior
    //e.preventDefault();

    //Get the A tag
    //var id = $(this).attr('href');

    //Get the screen height and width
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();

    //Set heigth and width to mask to fill up the whole screen
    $('#mask').css({ 'width': maskWidth, 'height': maskHeight }); 


    //transition effect		
    $('#mask').fadeIn(1000);
    $('#mask').fadeTo("slow", 0.8);

    //Get the window height and width
    var winH = $(window).height();
    var winW = $(window).width();

    //Set the popup window to center
    $('#dialog1').css('top', winH / 2 - $('#dialog1').height() / 2);
    $('#dialog1').css('left', winW / 2 - $('#dialog1').width() / 2);

    //transition effect
    $('#dialog1').fadeIn(2000);
}
$(document).ready(function () {
    if (window.location.href.indexOf("visitor") > -1) {
        // do nothing
    }
    else {
        setTimeout('Nowme()', 30000);//seconds timer now 50 seconds
    } 


    $(document).keyup(function (e) {
        if (e.keyCode == 27) {
            e.preventDefault();

            $('#mask').fadeOut();
            $('.window').hide();
        }
    });

    //if close button is clicked
    $('.window .close').click(function (e) {
        //Cancel the link behavior
        e.preventDefault();

        $('#mask').fadeOut();
        $('.window').hide();
    });

    //if mask is clicked
    $('#mask').click(function () {
        $(this).hide();
        $('.window').hide();
    });

    $(window).resize(function () {

        var box = $('#boxes .window');

        //Get the screen height and width
        var maskHeight = $(document).height();
        var maskWidth = $(window).width();

        //Set height and width to mask to fill up the whole screen
        $('#mask').css({ 'width': maskWidth, 'height': maskHeight });

        //Get the window height and width
        var winH = $(window).height();
        var winW = $(window).width();

        //Set the popup window to center
        box.css('top', winH / 2 - box.height() / 2);
        box.css('left', winW / 2 - box.width() / 2);

    });

});