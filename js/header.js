$(function(){
	$("#header").load("header.html",function(){
		var link=document.createElement("link");
		link.rel="stylesheet";
		link.href="css/header.css";
		document.head.appendChild(link);
		/*** 判断是否登录-->显示登录&注销 ***/
        $.ajax({
            type:"get",
            url:"data/users/islogin.php",
            dataType:"json",
            success:function(data){
                if(data.ok==1){
                    $("#btnLogin").html("注销");
                    $("#user").html(data.phone);
                    $("#c_login").html("");
                }else{
                    $("#btnLogin").html("登录");
                }
            }
        });
		/** 点击头部登录、注销按钮跳转到相应的页面 **/
        $("#btnLogin").click(function(e){
            e.preventDefault();
            var html=$("#btnLogin").html();
            if(html=="登录"){
                location.href="login.html?back="+location.href;
            }else{
                $("#btnLogin").html("登录");
                $("#user").html("");
                $("#c_login").html("点此登录");
                $.ajax({
                    type:"get",
                    url:"data/users/signout.php",
                    success:function(){
                        location.reload(true);
                    }
                })
            }
        });
        /** 点击头部注册按钮跳转登录页 **/
        $("#btnReg").click(function(e){
            e.preventDefault();
            location.href="register.html";
        });
        /** 点击我的订单、购物车按钮跳转购物车页 **/
        $("#cart_but1").click(function(e){
            e.preventDefault();
            $.ajax({
                type:"get",
                url:"data/users/islogin.php",
                dataType:"json",
                success:function(data){
                    if(data.ok==1){
                        $("#btnLogin").html("注销");
                        $("#user").html(data.phone);
                        $("#c_login").html("");
                    }else{
                        $("#btnLogin").html("登录");
                    }
                }
            });
            var html=$("#btnLogin").html();
            if(html=="登录"){
                location.href="login.html?back="+location.href;
            }else{
                location.href="shopcart.html";
            }
        });
        $("#cart_but2").click(function(e){
            e.preventDefault();
            $.ajax({
                type:"get",
                url:"data/users/islogin.php",
                dataType:"json",
                success:function(data){
                    if(data.ok==1){
                        $("#btnLogin").html("注销");
                        $("#user").html(data.phone);
                        $("#c_login").html("");
                    }else{
                        $("#btnLogin").html("登录");
                    }
                }
            });
            var html=$("#btnLogin").html();
            if(html=="登录"){
                location.href="login.html?back="+location.href;
            }else{
                location.href="shopcart.html";
            }
        });

        /************** 搜索帮助 **************/
        var btnSearch=$(
            "#top-input [data-trigger=search]"
        );
        var txtSearch=$("#keyword");
        btnSearch.click(function(){
            if(txtSearch.val().trim()!=""){
                location.href="products.html?kw="+txtSearch.val().trim();
            }
        })
        txtSearch.onkeyup=function(e){
            if(e.keyCode===13){
                btnSearch.click();
            }
        }
        if(location.search.indexOf("kw=")!=-1){
            txtSearch.val(decodeURI(location.search.split("=")[1]));
        }
        $("#btn").click(function(e){
            e.preventDefault();
        })
        var $txtSearch=$("#keyword"),
            $shelper=$("#shelper");
        $txtSearch.keyup(function(e){
            if(e.keyCode!=13){
                if(e.keyCode==40){
                    if(!$shelper.is(":has(.focus)")){
                        $shelper.children(":first").addClass("focus");
                    }else{
                        var $next=$shelper.children(".focus").removeClass("focus").next();
                        if($next.length>0){
                            $next.addClass("focus");
                        }else{
                            $shelper.children(":first").addClass("focus");
                        }
                    }
                }else if(e.keyCode==38){
                    if(!$shelper.is(":has(.focus)")){
                        $shelper.children(":first").addClass("focus");
                    }else{
                        var $prev=$shelper.children(".focus").removeClass("focus").prev();
                        if($prev.length>0){
                            $prev.addClass("focus");
                        }else{
                            $shelper.children(":last").addClass("focus");
                        }
                    }
                }else{
                    if($txtSearch.val().trim()!==""){
                        $shelper.show();
                        $.ajax({
                            type:"get",
                            url:"data/products/shelper.php",
                            data:{kw:$txtSearch.val()},
                            dataType:"json",
                            success:function(data){
                                if(data.length>0){
                                    var html="";
                                    for(var item of data){
                                        var {title,sold_count}=item;
                                        html+=
                                            `<li title="${title}">
												<div class="search-item" title="${title}">${title}</div>
												<i>销量：${sold_count}</i>
											</li>`;
                                    }
                                    $shelper.html(html);
                                }else{
                                    $shelper.html(`<li title="未找到">
										<div class="search-item" title="未找到">未找到</div>
									</li>`);
                                }
                            }
                        })
                    }else{
                        $shelper.hide();
                    }
                }
            }
        }).blur(function(){
            $shelper.hide();
        }).focus(function(){
            $txtSearch.keyup();
        })
    })
});