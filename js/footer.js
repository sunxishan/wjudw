$(function(){
	$("#footer").load("footer.html",function(){
		var link=document.createElement("link");
		link.rel="stylesheet";
		link.href="css/footer.css";
		document.head.appendChild(link);
		/* 右侧菜单 */
		$("#ul_list").on("mouseenter","li.item",function(){
			$(this).children().children().last().show();
		}).on("mouseleave","li",function(){
			$(this).children().children().last().hide();
		});
		/** 返回顶部按钮显示 **/
		$(window).scroll(function(){
            var scrollTop=$(window).scrollTop();
            if(scrollTop>=300){
                $("#toTop").fadeIn(300);
			}else{
                $("#toTop").fadeOut(300);
			}
		})
        /** 返回顶部点击事件 **/
		$("#toTop").click(function(){
            var scrollTop=$(window).scrollTop();
            var timer=setInterval(function(){
                if(scrollTop<=0){
                    clearInterval(timer);
                }else{
                    scrollTop-=80;
                }
                $(window).scrollTop(scrollTop);
            },10);
		});
	});
});