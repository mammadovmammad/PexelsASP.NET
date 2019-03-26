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



    $(document).on("click", ".right-like-button", function () {
        var isLiked = $(this).next();
        var forPhotoId = isLiked.next().val();
        var myButton = $(this);
        if ($(this).next().val() == 0) {
            $.ajax({
                url: "/AJAX/LikePhoto",
                data: { photoID: forPhotoId },
                type: "post",
                datatype: "json",
                success: function(res) {
                    console.log(res);
                    isLiked.val(1)
                    myButton.css("color", "red")
                }
            })
        } else {
            console.log(forPhotoId)
                $.ajax({
                    url: "/AJAX/DissLikePhoto",
                    data: { photoID:forPhotoId  },
                    type: "post",
                    datatype: "json",
                    success: function(res) {
                        console.log(res);
                        isLiked.val(0)
                        myButton.css("color", "white")
                    }
            })
                
            }
        
    })
});