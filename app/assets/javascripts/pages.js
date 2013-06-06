
$(window).ready(function (){
        var hHeight = $("#mainHead").height();
        var fHeight = $("#mainFoot").height();
        var lessHeight = hHeight + fHeight;
        var space = window.innerHeight - lessHeight;

        $("#stackPage").css("height", space + 'px');

        var sMin = 540;
        var sMax = 810;

        if(space < sMin) {space = sMin;}
        else if(space > sMax) {space = sMax;}

        $("#homePage").css("height", space + 'px');
    });

$(window).resize(function (){
        var hHeight = $("#mainHead").height();
        var fHeight = $("#mainFoot").height();
        var lessHeight = hHeight + fHeight;
        var space = window.innerHeight - lessHeight;

        $("#stackPage").css("height", space + 'px');

        var sMin = 540;
        var sMax = 810;

        if(space < sMin) {space = sMin;}
        else if(space > sMax) {space = sMax;}

        $("#homePage").css("height", space + 'px');
    });