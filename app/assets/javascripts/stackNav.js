if (window.matchMedia("(min-device-width: 768px)").matches) {
    $(window).ready(function (){
            var sNWidth = $('.stackNav').width();
            var sNMargin = -(sNWidth / 2) + 'px';
            console.log(sNMargin);
            $('.stackNav').css('marginLeft',sNMargin);
        });
}
else{
    console.log('too small for slider navigation');
}