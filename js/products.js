$(function(){
	$("#t1").mouseover(function(){
		$("#t1>.list-card").show();
	}).mouseleave(function(){
		$("#t1>.list-card").hide();
	})

	/************* 加载商品内容 *************/
	function loadPage(pno,pageSize,kw){
		$.ajax({
			type:"get",
			url:"data/products/getProductsByKw.php",
			data:{pno:pno,pageSize:pageSize,kw:kw},
			dataType:"json",
            success:function(output) {
                //console.log(output);
                var pageCount = output.pageCount;
                //console.log(pageCount);
                var html = "";
                var data = output.data;
                for (var item of data) {
                    //console.log(output.data);
                    var {lid, md, title, price, sold_count, eval_count} = item;
                    html +=
					`<div class="item-card lf">
							<a href="product_details.html?lid=${lid}" class="photo">
								<img src="${md}" alt="${title}" class="cover">
								<div class="name">${title}</div>
							</a>
							<div class="middle">
								<div class="price lf"><small>￥</small>${parseFloat(price).toFixed(2)}</div>
								<div class="sale rf"><a href="product_details.html?lid=${lid}">查看详情</a></div>
							</div>
							<div class="buttom">
								<div>人气 <b>${sold_count}</b></div>
								<div></div>
								<div>评论 <b>${eval_count}</b></div>
							</div>
					</div>`;
                }
				$("#products_list").html(html);

				var pno = parseInt(output.pno);//当前页
				var pageCount = parseInt(output.pageCount);//总页数
				var html = `<a href="javascript:;" title="第一页"  class="first_page">&lt;&lt;</a>
				<a href="javascript:;" title="上一页" class="previous">&lt;</a>`;
				//上上页
				if (pno - 2 > 0) {
					html += `<a href="javascript:;">${pno - 2}</a>`;
				}
				//上一页
				if (pno - 1 > 0) {
					html += `<a href="javascript:;">${pno - 1}</a>`;
				}
				//当前页
				html += `<a href="javascript:;" class="active">${pno}</a>`;
				//下一页
				if (pno + 1 <= pageCount) {
					html += `<a href="javascript:;">${pno + 1}</a>`;
				}
				//下下页
				if (pno + 2 <= pageCount) {
					html += `<a href="javascript:;">${pno + 2}</a>`;
				}
				html += `<a href="javascript:;" title="下一页" class="next">&gt;</a>
				<a href="javascript:;" title="最后一页" class="last_page">&gt;&gt;</a>`;
                $("#pages").html(html);

                /*********** 为分页按钮绑定事件 ***********/
                //上一页
                $("#pages .previous").click(function(e){
                    e.preventDefault();
                    console.log(1223);
                    loadPage(pno-1,20);
                });
                //下一页
                $("#pages .next").click(function(e){
                    e.preventDefault();
                    console.log(1223);
                    loadPage(pno+1,20);
                });
                //第一页
                $("#pages>a.first_page").click(function(e){
                    e.preventDefault();
                    loadPage(1,20);
                });
                //最后一页
                $("#pages>a.last_page").click(function(e){
                    e.preventDefault();
                    loadPage(pageCount,20);
                });
                //获取所有页码元素，并绑定点击事件
                $("#pages").on("click","a",function(e){
                    e.preventDefault();
                    //获取当前页码
                    var $a=$(this);
                    var pno=parseInt($a.html());
                    //调用分页函数
                    loadPage(pno,20);
                });
                if(pno===1){
                    $("#pages>a:lt(2)").addClass("disabled");
                }
                if(pno===pageCount){
                    $("#pages>a:eq(-1),#pages>a:eq(-2)").addClass("disabled");
                }
            },
			error:function(){
				alert("网络故障请检查！！");
			}
		})
	}

    if(location.search.indexOf("kw=")!=-1){
        console.log(location.search);
        var kw=location.search.split("=")[1];
        console.log(kw);
        loadPage(1,20,kw);
    }else{
        loadPage(1,20,"");
	}
});




