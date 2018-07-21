/************* 广告轮播 *************/
$(function(){
	var $ul=$("#banner>.banner-img");
	var $ulIds=$("#banner>.indicators");//小圆点
	var li=window.screen.width;//获取屏幕宽度
	var liWidth=li,interval=500,wait=2000,moved=0;
	$.ajax({
		type:"get",
		url:"data/index/getCarousel.php",
		dataType:"json",
		success:function(data){
			//console.log(data);
			var html="";
			for(var c of data){
				var {img,href,title}=c;
				html+=
					`<li>
						<a href="${href}" title="${title}">
							<img src="${img}">
						</a>
					</li>`;
			}
			var {img,href,title}=data[0];
			html+=
				`<li>
					<a href="${href}" title="${title}">
						<img src="${img}">
					</a>
				</li>`;
			$ul.html(html).css("width",liWidth*(data.length+1));
			$ulIds.html("<li></li>".repeat(data.length)).children(":first").addClass("hover");
			autoMove();
			/*给轮播图片li动态添加css属性-宽度*/
			var	$li=$("#banner>.banner-img li");
	    	$li.css("width",li);
		}
	});
	/* 切换图片 */
	function autoMove(){
		timer=setInterval(function(){
			move();
		},wait);
	}
	function move(){
		moved++;
		$ul.animate({
			left:-moved*liWidth
		},interval,function(){
			if(moved==$ul.children().length-1){
				$ul.css("left",0);
				moved=0;
			}
			$ulIds.children(":eq("+moved+")").addClass("hover").siblings().removeClass("hover");
		})
	}
	/* 鼠标悬停轮播停止 */
	$("#banner").mouseenter(function(){
		clearInterval(timer);
		timer=null;
	}).mouseleave(function(){
		autoMove();
	});
	/* 点击圆点跳转到对应的图片 */
	$ulIds.on("click","li",function(){
		var $li=$(this);
		var i=$li.index();
		moved=i;
		$ul.stop(true).animate({
			left:-moved*liWidth
		},interval,function(){
			$ulIds.children(":eq("+moved+")").addClass("hover").siblings().removeClass("hover");
		})
	});
	/*  */
});

/************* 公告轮播 *************/
$(function(){
	var $wrapper=$("#wrapper");
	var aHeight=24,interval=500,wait=1000,moved=0;
	function upMove(){
        timer1=setInterval(function(){
            move1();
        },wait);
	}
    upMove();
	function move1(){
        moved++;
        $wrapper.animate({
            top:-moved*aHeight
        },interval,function(){
            if(moved==$wrapper.children().length-10){
                $wrapper.css("top",0);
                moved=0;
            }
        })
	}
});

/************* 楼层信息加载 *************/
/* 左侧大图 */
$(function(){
	$.ajax({
		type:"get",
		url:"data/index/getProducts.php",
		dataType:"json",
		success:function(data){
			var html="";
			//console.log(data);
			var count=-1;//
			for(var i of data){
				var {pic, href}=i;
				//console.log(i.pic);
				var $a=$(`<a class='left-img hot-img lf' href='${href}'><img src='${pic}' alt=''></a>`);
				count++;
				if(count<1){
					$a.prependTo($("#F1"));
				}else if(count<2){
					$a.prependTo($("#F2"));
				}else if(count<3){
					$a.prependTo($("#F3"));
				}else if(count<4){
					$a.prependTo($("#F4"));
				}else if(count<5){
					$a.prependTo($("#F5"));
				}else if(count<6){
					$a.prependTo($("#F6"));
				}
			}
		},
		error:function(){
			alert("网络故障请检查！！");
		}
	});
});

/* 小图片 */
$(function(){
	$.ajax({
		type:"get",
		url:"data/index/getIndexProducts.php",
		dataType:"json",
		success:function(data){
			var html1="";
			var html2="";
			var html3="";
			var html4="";
			var html5="";
			var html6="";
			var count=-1;//.right-box下a链接的个数
			for(var i of data){
				count++;
				if(count<6){/* 1楼 */
					var {title,pic, price, href}=i;
					html1+=`<a href="${href}" class="floor-item lf">
						<div class="item-img hot-img ">
							<img src="${pic}" alt="${title}">
						</div>
						<div class="price clearfix">
							<span class="lf cr fz16">￥${parseFloat(price).toFixed(2)}</span>
							<span class="rf c6">进货价</span>
						</div>
						<div class="name ep" title="${title}">${title}</div>
					</a>`;
				}else if(count<14){/* 2楼 */
					var {title,pic, price, href}=i;
					html2+=`<a href="${href}" class="floor-item lf">
						<div class="item-img hot-img ">
							<img src="${pic}" alt="${title}">
						</div>
						<div class="price clearfix">
							<span class="lf cr fz16">￥${parseFloat(price).toFixed(2)}</span>
							<span class="rf c6">进货价</span>
						</div>
						<div class="name ep" title="${title}">${title}</div>
					</a>`; 
				}else if(count<22){/* 3楼 */
					var {title,pic, price, href}=i;
					html3+=`<a href="${href}" class="floor-item lf">
						<div class="item-img hot-img ">
							<img src="${pic}" alt="${title}">
						</div>
						<div class="price clearfix">
							<span class="lf cr fz16">￥${parseFloat(price).toFixed(2)}</span>
							<span class="rf c6">进货价</span>
						</div>
						<div class="name ep" title="${title}">${title}</div>
					</a>`; 
				}else if(count<30){/* 4楼 */
					var {title,pic, price, href}=i;
					html4+=`<a href="${href}" class="floor-item lf">
						<div class="item-img hot-img ">
							<img src="${pic}" alt="${title}">
						</div>
						<div class="price clearfix">
							<span class="lf cr fz16">￥${parseFloat(price).toFixed(2)}</span>
							<span class="rf c6">进货价</span>
						</div>
						<div class="name ep" title="${title}">${title}</div>
					</a>`; 
				}else if(count<38){/* 5楼 */
					var {title,pic, price, href}=i;
					html5+=`<a href="${href}" class="floor-item lf">
						<div class="item-img hot-img ">
							<img src="${pic}" alt="${title}">
						</div>
						<div class="price clearfix">
							<span class="lf cr fz16">￥${parseFloat(price).toFixed(2)}</span>
							<span class="rf c6">进货价</span>
						</div>
						<div class="name ep" title="${title}">${title}</div>
					</a>`; 
				}else if(count<46){/* 6楼 */
					var {title,pic, price, href}=i;
					html6+=`<a href="${href}" class="floor-item lf">
						<div class="item-img hot-img ">
							<img src="${pic}" alt="${title}">
						</div>
						<div class="price clearfix">
							<span class="lf cr fz16">￥${parseFloat(price).toFixed(2)}</span>
							<span class="rf c6">进货价</span>
						</div>
						<div class="name ep" title="${title}">${title}</div>
					</a>`; 
				}
			}
			$("#F1 .right-box").html(html1);
			$("#F2 .right-box").html(html2);
			$("#F3 .right-box").html(html3);
			$("#F4 .right-box").html(html4);
			$("#F5 .right-box").html(html5);
			$("#F6 .right-box").html(html6);
		},
		error:function(){
			alert("网络故障请检查！！");
		}
	})
});

/* 楼梯导航 */
$(function(){
	var $floorNav=$("#floor-nav"),$floors=$(".scroll_floor");
	$(window).scroll(function(){
        var scrollTop=$(window).scrollTop();
        if(scrollTop>=400){
            $floorNav.show();
            $floors.each(function(i,f){
                var $f=$(f);
                var offsetTop=$f.offset().top;
                if(offsetTop<=scrollTop+innerHeight/2){
                    $floorNav.find(".scroll-nav:eq("+i+")").addClass("active").siblings().removeClass("active");
                }
            })
        }else{
            $floorNav.hide();
        }
        $floorNav.on("click",".scroll-nav",function(){
            var $scrollNav=$(this);
            var i=$scrollNav.index();
            var offsetTop=$($floors[i]).offset().top;
            $("html,body").stop(true).animate({
                scrollTop:offsetTop
            },500);
        })
	});
});



