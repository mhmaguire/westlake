
$(window).ready(function (){
        var theFooter = document.getElementById("mainFoot");
        var space = window.innerHeight - theFooter.offsetTop;
        theFooter.style.height = space + 'px';
    });
    window.onresize = function (){
        var theFooter = document.getElementById("mainFoot");
        var space = window.innerHeight - theFooter.offsetTop;
        theFooter.style.height = space + 'px';
        console.log('hello there');
    };
