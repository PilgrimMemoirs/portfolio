$(document).ready(function(){
resizeDiv();
});

window.onresize = function(event) {
resizeDiv();
}

function resizeDiv() {
wh = $(window).height();
ww = $(window).width();
wh += 30;
ww -= 48;

$("#parallax-1").css({"height": wh + "px"});
$("footer").css({"width": ww + "px"});
}