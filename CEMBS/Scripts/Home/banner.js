$(function () {
    $('#demo-nav').find('a').tooltip({ effect: 'slide' });
});

$(window).load(function () {
    $('#slider').ccslider({
        _3dOptions: {
            imageWidth: 980,
            imageHeight: 309
        }
    });
});