    $(document).ready(function(){
        $(window).on("scroll",function(){
          var wn = $(window).scrollTop();
        if(wn > 120){
            $(".home").css("background","#232a34");
        }
        else{
            $(".home").css("background","transparent");
        }
        });
        
        $('.res-menu').click(function() {
            $('.menu-responsive').toggleClass('res-active');
                if ($('.menu-responsive').hasClass('res-active')) {
                    $('#search').css('display', 'none');
                }
                else {
                    $('#search').css('display', 'block');
                }
            });
    });