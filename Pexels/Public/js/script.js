$(document).ready(function () {
        //Change Background Color Scroll Home Page
        $(window).on("scroll",function(){
          var wn = $(window).scrollTop();
        if(wn > 120){
            $(".home").css("background","#232a34");
        }
        else{
            $(".home").css("background","transparent");
        }
        });

        //Responsive Menu
        $('.res-menu').click(function() {
            $('.menu-responsive').toggleClass('res-active');
                if ($('.menu-responsive').hasClass('res-active')) {
                    $('#search').css('display', 'none');
                }
                else {
                    $('#search').css('display', 'block');
                }
        });

        //Ajax Get Photos
        var skipCount =10;
        var scrollLoadFunction = function () {
            if ($(document).height() - $(window).scrollTop() - $(window).height() < 200) {
                $.ajax({
                    url: "/Ajax/LoadPhotos",
                    type: "GET",
                    data: { skip: skipCount },
                    success: function (res) {
                        if (res.trim().length != 0) {
                            skipCount += 3;

                            $(".photos .row").append(res);
                        }
                        else {
                            window.removeEventListener("scroll", scrollLoadFunction);
                        }
                    }

                })
            }
        }
    window.addEventListener("scroll", scrollLoadFunction);


    //var likeButton = $(".right-like-button");
    //var forPhotoId = $(".forPhotoId");
    //var isLikeed = $("#isLikeed");

    //$(document).on("click", ".right-like-button", function() {
    //    if (isLikeed.val() == 0) {
    //        $.ajax({
    //            url: "/AJAX/LikePhoto",
    //            data: { photoID: $(".forPhotoId").val() },
    //            type: "post",
    //            datatype: "json",
    //            success: function(res) {
    //                console.log(res);
    //                $(".right-like-button").CSS("color", "red"),
    //                    isLikeed.val(1)

    //            }
    //    })
    //    }
    //})
});