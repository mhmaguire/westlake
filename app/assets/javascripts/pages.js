
$(window).ready(function (){
        var theContent = document.getElementById("mainContent");
        var lessHeight = 85;
        var space = window.innerHeight - lessHeight;
        console.log(theContent.style.height = space + 'px');
    });
    window.onresize = function (){
        var theContent = document.getElementById("mainContent");
        var lessHeight = 85;
        var space = window.innerHeight - lessHeight;
        theContent.style.height = space + 'px';
    };


