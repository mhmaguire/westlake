if (window.matchMedia("(min-device-width: 768px)").matches) {
    $(window).resize(function (){
            var sSCopy = $('.defaultSlide2 .stackSlideCopy');
            var sSImg = $('.defaultSlide2 .slideContent > img');
            var footP = $('#mainFoot').offset().top;
            var copyP = $(sSImg).offset().top + sSImg.height() + $(sSCopy).height();

            if (footP < copyP ){
                sSCopy.css({'position':'fixed','bottom':'40px'});
            }
            else{
                sSCopy.css('position', 'static');
            }
        });
}