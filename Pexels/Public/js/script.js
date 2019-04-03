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

        $(window).on('load',function() {
                $(window).scrollTop(0);
        });
        //Change Background Color Scroll Home Page


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
        //Responsive Menu


        //Ajax Get Photos
        //var skipCount =10;
        //var scrollLoadFunction = function () {
        //    if ($(document).height() - $(window).scrollTop() - $(window).height() < 200) {
        //        $.ajax({
        //            url: "/Ajax/LoadPhotos",
        //            type: "GET",
        //            data: { skip: skipCount },
        //            success: function (res) {
        //                if (res.trim().length != 0) {
        //                    skipCount += 5;

        //                    $(".grid").append(res);
        //                }
        //                else {
        //                    window.removeEventListener("scroll", scrollLoadFunction);
        //                }
        //            }
                    

        //        })
        //    }
        //}
        //window.addEventListener("scroll", scrollLoadFunction);
        //Ajax Get Photos


        //Masonary
        var columns = 3,
        setColumns = function () { columns = $(window).width() > 700 ? 3 : $(window).width() > 480 ? 2 : 1 };
        setColumns();
        $(window).resize(setColumns);
        
        $('.grid').masonry({
        // options
        itemSelector: '.grid-item',
            columnWidth: function (setColumns) { return setColumns / columns; }
        });
        //Masonary


        //$('.grid').infiniteScroll({
        //    // options
        //    path: '.pagination__next',
        //    append: '.grid-item',
        //    history: false,
        //});

        //Like
    $(document).on("click", ".grid .right-like-button", function () {
        var isLiked = $(this).attr("data-proId");

        console.log(isLiked);

        var islikeeed = $(this).next().val();

        var myButton = $(this);

        var count = $(".photo-like-single").text();

        var likecount = parseInt(count);

        if (myButton.hasClass("liked") == false && islikeeed==0 ) {
            $.ajax({
                url: "/AJAX/LikePhoto",
                data: { photoID: isLiked },
                type: "post",
                datatype: "json",
                success: function (res) {
                    console.log(likecount);
                        ++likecount;


                    console.log(likecount);

                    $(".photo-like-single").text(likecount);

                    myButton.addClass("liked");

                    islikeeed = 1;
                }
            });
        } else {
                $.ajax({
                    url: "/AJAX/DissLikePhoto",
                    data: { photoID:isLiked  },
                    type: "post",
                    datatype: "json",
                    success: function(res) {
                        console.log(res);

                        --likecount;

                        $(".photo-like-single").text(likecount);

                        myButton.removeClass("liked");

                        myButton.css("color", "white");

                        islikeeed = 0;

                    }
            })
                
            }
        
    })
        //Like


        //Error Mesage When Photo Name Null Upload Photo
    $(".upload").click(function myfunction(e) {

        var imgVal = $(".input_photo").val();

            if (/\s/.test($(".input_name").val()) || imgVal==" ") {
                e.preventDefault();

                alert("Şəkilin adı boş buraxıla bilməz");
            }
        })
        //Error Mesage When Photo Name Null Upload Photo
});
