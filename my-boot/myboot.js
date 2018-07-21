if(typeof jQuery!=="function"){
	throw new Error("必须先引入jQuery！");
}else{
	/**************** tabs插件 ****************/
	//绑定事件
	$("[data-toggle=tab]").parent().parent()
		.on("click","[data-toggle=tab]",function(e){
		e.preventDefault();
		var $tar=$(this);
		if(!$tar.parent().is(".active")){
			$tar.parent().addClass("active")
				.siblings().removeClass("active");
			var id=$tar.attr("href");
			$(id).addClass("active in")
				.siblings().removeClass("active in");
		}
	});
}
