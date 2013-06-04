
$(window).load(function(){
	var hHeight = $("#mainHead").height();
	var ftHeight = $("#mainFoot").height();
	var sHeight = window.innerHeight - hHeight - ftHeight;
	var feHeight = document.getElementById("homeFeatured").scrollHeight;
	var sMax = 500 + feHeight;
	var sMin = 380 + feHeight;

	if (sHeight < sMin){sHeight = sMin;}
	if (sHeight > sMax){sHeight = sMax;}

	document.getElementById("homePage").style.height = sHeight + 'px';
	console.log(sMin);
});

$(window).resize(function(){
	var hHeight = $("#mainHead").height();
	var ftHeight = $("#mainFoot").height();
	var sHeight = window.innerHeight - hHeight - ftHeight;
	var feHeight = document.getElementById("homeFeatured").scrollHeight;
	var sMax = 500 + feHeight;
	var sMin = 380 + feHeight;

	if (sHeight < sMin){sHeight = sMin;}
	if (sHeight > sMax){sHeight = sMax;}

	document.getElementById("homePage").style.height = sHeight + 'px';
});
