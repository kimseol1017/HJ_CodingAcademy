$(document).ready(function() {
    // 드롭다운 메뉴 애니메이션 효과
    $('#mainBarMenu li.hover').hover(
        function() {
            // 마우스를 올렸을 때 드롭다운 메뉴를 서서히 나타나도록 함
            $(this).find('.subM').stop().slideDown(200).animate({ opacity: 1 }, 300);
        },
        function() {
            // 마우스를 벗어났을 때 드롭다운 메뉴를 서서히 사라지도록 함
            $(this).find('.subM').stop().slideUp(200).animate({ opacity: 0 }, 300);
        }
    );
});

