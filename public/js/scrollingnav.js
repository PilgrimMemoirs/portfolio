$(window).scroll(function() {    
    var scroll = $(window).scrollTop();

    if (scroll >= 500) {
        $("nav").addClass("scrolling");
        $("nav img").addClass("scrolling");
        $("nav ul").addClass("scrolling");
        $("nav ul li").addClass("scrolling");
    } else {
        $("nav").removeClass("scrolling");
        $("nav img").removeClass("scrolling");
        $("nav ul").removeClass("scrolling");
        $("nav ul li").removeClass("scrolling");
    }


    if (scroll >= 60) {
    	$("footer").addClass("scrolling"); 
    } else {
    	$("footer").removeClass("scrolling");
    }
});