$(document).ready(function() {
    // 드롭다운 메뉴 애니메이션 효과
    $('#mainBarMenu li.hover').hover(
    function() {
    // 마우스를 올렸을 때 드롭다운 메뉴를 내려오면서 투명도를 조절
    $(this).find('.subM').stop().slideDown(300).animate({ opacity: 1 }, 300);
    },
    function() {
    // 마우스를 벗어났을 때 드롭다운 메뉴를 서서히 올리면서 투명도를 조절
    $(this).find('.subM').stop().slideUp(300).animate({ opacity: 0 }, 300);
    }
    );
    });