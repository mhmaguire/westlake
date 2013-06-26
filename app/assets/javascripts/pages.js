if (window.matchMedia("(min-device-width: 768px)").matches) {
    $(window).ready(function (){
            var hHeight = $("#mainHead").height();
            var fHeight = $("#mainFoot").height();
            var lessHeight = hHeight + fHeight;
            var space = window.innerHeight - lessHeight;

            $("#mainContent").css("height", space + 'px');

            var sMin = 500;
            if(space < sMin) {space = sMin;}

        });

    $(window).resize(function (){
            var hHeight = $("#mainHead").height();
            var fHeight = $("#mainFoot").height();
            var lessHeight = hHeight + fHeight;
            var space = window.innerHeight - lessHeight;

            $("#mainContent").css("height", space + 'px');

            var sMin = 500;
            if(space < sMin) {space = sMin;}

        });
}
else{
    console.log('too small for slider');
}