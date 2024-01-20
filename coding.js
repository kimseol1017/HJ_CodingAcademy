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
    
    $(document).ready(function () {
    var $slider = $('.line1');
    var $slide = $('.line1 img');
    var slideCount = $slide.length;
    var currentIndex = 0;
    var interval = 4500; // 슬라이드 변경 시간
    
    function nextSlide() {
        if (currentIndex < slideCount - 1) {
            currentIndex++;
        } else {
            currentIndex = 0;
        }
        updateSlider();
    }
    
    function updateSlider() {
        var translateValue = -currentIndex * 100 + '%';
        $slider.css('transform', 'translateX(' + translateValue + ')');
    }
    
    setInterval(nextSlide, interval);
    

    
    });