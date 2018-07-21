$(function(){
    if(location.search.indexOf("lid")!=-1){
        var lid=location.search.split("=")[1];
        $.ajax({
            type: "get",
            url: "data/products/getProductById.php",
            data: {lid:lid},
            dataType: "json",
            success:function(output){
                var {product}=output;
                var {title, price, eval_count, integral}=product;
                $("#info_box>.title").html(title);
                $("#price").html("¥"+parseFloat(price).toFixed(2));
                $("#cr").html(eval_count);
                $("#cg").html(integral);
            },
            error:function(){
                alert("网络故障请检查！");
            }
        });
    }
});
/** 放大镜 **/
$(function(){
    if(location.search.indexOf("lid")!=-1){
        var lid=location.search.split("=")[1];
        $.ajax({
            type: "get",
            url: "data/products/getTupian.php",
            data: {lid:lid},
            dataType: "json",
            success:function(data){
                var html='';
                for(var i of data){
                    var {lg,md,pid,sm}=i;
                    html+=
                        `<li class="item">
							<img class="cover"  src="${sm}" data-md="${md}" data-lg="${lg}">
						</li>`;
                }
                $(".xs_list>.clear").html(html);
                $(".xs_list>.clear>li:first-child").addClass(" active");
                $(".small_pic>div>img").attr("src",data[0].md);
                $(".big_pic>img").attr("src",data[0].lg);
            },
            error:function(){
                alert("网络故障请检查！！");
            }
        })
    }

    $(".xs_list>.clear").on("mouseover","img",function(){
        $(this).parent().addClass(" active").siblings().removeClass("active");
        var $md=$(this).data("md");
        var $lg=$(this).data("lg");
        $(".small_pic>div>img").attr("src",$md);
        $(".big_pic>img").attr("src",$lg);
    })
    var s=$(".hover");
    $("#pos").mouseout(function(){
        s.hide();
        $(".big_pic").hide();
    })
    var MSIZE=188, SMSIZE=360;
    $("#pos").mousemove(function(e){
        s.show();
        $(".big_pic").show();

        var left=e.offsetX-MSIZE/2;
        var top=e.offsetY-MSIZE/2;

        left=left<0?0:left>SMSIZE-MSIZE?SMSIZE-MSIZE:left;
        top=top<0?0:top>SMSIZE-MSIZE?SMSIZE-MSIZE:top;
        s.css("left",left+"px");
        s.css("top",top+"px");

        $qq=$(".big_pic>img");
        $qq.css("margin-left",-2*left);
        $qq.css("margin-top",-2*top);
    });
    /** 判断加入购物车是否登录 **/
    $("#info_box .action").on("click",".action_basket",function(e){
        e.preventDefault();
        var $a=$(this);
        $.ajax({
            type:"get",
            url:"data/users/islogin.php",
            dataType:"json",
            success:function(data){
                //判断是否登录
                if(data.ok==1){
                    var lid=$a.data("lid");//$a.attr("data-lid"),
                    count=$a.siblings(":text").val();
                    $.ajax({
                        type:"get",
                        url:"data/cart/addCart.php",
                        data:{lid,count},
                        success:function(){
                            //刷新购物车列表
                            loadCart();
                        },
                        error:function(){
                            alert("网络故障请检查!");
                        }
                    })
                }else{
                    location.href="login.html?back="+location.href;
                }
            }
        });
    })
    // function loadCart(){
    //     $.ajax({
    //         type:"get",
    //         url:"data/users/islogin.php",
    //         dataType:"json",
    //         success:function(data){
    //             if(data.ok==1){
    //                 $.ajax({
    //                     type:"get",
    //                     url:"data/cart/getCart.php",
    //                     dataType:"json",
    //                     success:function(data){
    //                         //console.log(data);
    //
    //                     }
    //                 })
    //             }
    //         },
    //         error:function(){
    //             alert("网络故障请检查!");
    //         }
    //     })
    // }
    // loadCart();
    /******** 购物车内容 ********/
    $(".account .pt .amount_btn").on("click",".add,.sub",function(e){
        var tar=e.target;
        if(/^(add|sub)$/i.test(tar.className)){
            var txt=tar.parentNode.children[1];
            var n=txt.value;
            if(tar.className=="add") {
                n++;
            }else if(n>1){
                n--;
            }
            txt.value=n;
        }
        // $.ajax({
        //     type:"get",
        //     url:"data/cart/updateCart.php",
        //     data:{count},
        //     success:function(){
        //         loadCart();
        //     },
        //     error:function(){
        //         alert("网络故障请检查!");
        //     }
        // })
    });

})