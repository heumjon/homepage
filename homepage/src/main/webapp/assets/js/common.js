$(document).scroll(function () {
	        btn_mv_up('.btn_up_layer');
}).on('click', '.btn_up_layer', function () {
    $("html, body").animate({
        scrollTop: 0
    }, 1000);
    return false;
});

function btn_mv_up(oj) {
    if (!oj) return false;
    var st = $(window).scrollTop();
    var h = $(window).height();
    
 	// 스크롤 이동에 따른 위로버튼의 위치 이동
    $(oj).stop().hide().css('top', h + st - 50); 
    $(oj).fadeIn();
    
    /* if (st > 500) {
        // 위로버튼을 보여주는 위치 지정
        $(oj).fadeIn();
    } else if (st < 500) {
        // 위로버튼을 숨기는 위치 지정
        $(oj).stop().fadeOut();
    } */
}