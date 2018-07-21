/* 商品列表/详情页--爆款推荐 */
$(function(){
	$.ajax({
		type:"get",
		url:"data/index/getIndexProducts.php",
		dataType:"json",
		success:function(data){
			var html="";
			var count=-1;//#bk下a的个数
			for(var i of data){
				count++;
				if(count<6){/* 1楼 */
					var {pic, price, href}=i;
					html+=
						`<a href="${href}" class="picked-item">
							<img src="${pic}" alt="" class="cover">
							<span class="look_price">¥${parseFloat(price).toFixed(2)}</span>
						</a>`;
				}
			}
			$("#bk").html(html);
			$("#bk1>.box").html(html);
		},
		error:function(){
			alert("网络故障请检查！！");
		}
	})
});

