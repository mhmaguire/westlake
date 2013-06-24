if (window.matchMedia("(min-device-width: 768px)").matches) {
    $(window).ready(function (){
            var hHeight = $("#mainHead").height();
            var fHeight = $("#mainFoot").height();
            var lessHeight = hHeight + fHeight;
            var space = window.innerHeight - lessHeight;

            $("#mainContent").css("height", space + 'px');

            var sMin = 500;
            //var sMax = 810;

            if(space < sMin) {space = sMin;}
            //else if(space > sMax) {space = sMax;}

        });

    $(window).resize(function (){
            var hHeight = $("#mainHead").height();
            var fHeight = $("#mainFoot").height();
            var lessHeight = hHeight + fHeight;
            var space = window.innerHeight - lessHeight;

            $("#mainContent").css("height", space + 'px');

            var sMin = 500;
            //var sMax = 810;

            if(space < sMin) {space = sMin;}
            //else if(space > sMax) {space = sMax;}

        });
}
else{
    console.log('too small for slider');
}