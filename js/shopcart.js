$(function(){
	function gwc(){
        $.ajax({
            type:"get",
            url:"data/users/islogin.php",
            dataType:"json",
            success:function(data){
                if(data.ok==0){
                    location.href="login.html?back="+location.href;
                }else{
                    $.ajax({
                        type:"get",
                        url:"data/cart/getCart.php",
                        dataType:"json",
                        success:function(data){
                            var html="",sum=0,total=0;;
                            for(var i of data){
                                var {color,sm,spec,price,count,iid,title,is_checked}=i
                                if(is_checked==1){
                                    sum+=parseInt(count);
                                    total+=price*count;
                                }
                                html+=
                                    `<div class="imfor" data-iid=${iid}>
										<div class="check">
											<img src="images/product_${is_checked==0?'normal':'true'}.png" alt="">
										</div>
										<div class="product">
											<a href="#">
											  	<img src="${sm}" alt="">
											</a>
											<span class="title">
											  	<a href="#">${title}</a>
											</span>
										</div>
										<div class="price">
											<p class="price-desc">会员专享价</p>
											<p>
											  	<b>￥</b>${price}
											</p>
										</div>
										<div class="color">
											<b>${color}</b>
										</div>
										<div class="spec">
											<b>${spec}</b>
										</div>
										<div class="num">
											<span class="reduce">-</span>
											<input type="text" class="text" value="${parseInt(count)}">
											<span class="add">+</span>
										</div>
										<div class="total-price">
											<span>￥</span>
											<span>${parseInt(price*count)}</span>
										</div>
										<div class="del">
											<a href="#" data-iid="${iid}">删除</a>
										</div>
									</div>`;
                            }
                            $("#content-box-body").html(html);
                            $(".total,.totalOne").html(sum);
                            $(".totalPrices,.foot-price").html(total.toFixed(2));
                            $(".check-top>img,#fooAll>img").attr("src","images/product_"
                                +($("#content-box-body").is(":has([src$=normal.png])")?"normal":"true")+".png");
                        },
                        error:function(){
                            alert("网络故障请检查！");
                        }
                    })
                }
            }
        })
	}
	gwc();
	$("#content-box-body").on("click",".del>a",function(e){
		e.preventDefault();
		var iid=$(this).data("iid");
		$.ajax({
			type:'get',
			url:'data/cart/deleteCart.php',
			data:{iid},
			success:function(){
				alert("删除成功！");
				gwc();
			}
		})
	});
	$(".check-top>img").click(function(){
		var is_checked=$(this).attr("src").endsWith("true.png")?0:1;
		$.ajax({
			type:"get",
			url:"data/cart/checkAll.php",
			data:{is_checked},
			success:function(){
				gwc();	
			}
		})
	});
	$("#content-box-body").on("click",".add,.reduce",function(){
		var $span=$(this);
		var iid=$span.parent().parent().attr("data-iid"),
			count=parseInt($span.siblings(":text").val());
		if($span.html()=="+")
			count++;
		else
			count--;
			console.log(count);
		$.ajax({
			type:"get",
			url:"data/cart/updateCart.php",
			data:{iid,count},
			success:function(){
				gwc();	
			}
		})
	}).on("click",".check>img",function(){
		var $img=$(this);
		var iid=$img.parent().parent().attr("data-iid"),
			is_checked=$img.attr("src").endsWith("true.png")?0:1;
		$.ajax({
			type:"get",
			url:"data/cart/checkOne.php",
			data:{iid,is_checked},
			success:function(){
				gwc();	
			}
		})
	});
})