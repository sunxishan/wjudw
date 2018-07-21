/***** 判断登录是否正确 *****/
$(function(){
    $("#btn1").click(function(e){
        e.preventDefault();
        var phone=$("#login_form .phone").val();
        var upwd=$("#login_form .upwd").val();
        console.log(phone,upwd);
        $.ajax({
            type:"post",
            url:"data/users/signin.php",
            data:{phone:phone,upwd:upwd},
            success:function(msg){
                alert(msg);
                if(msg=="登录成功!"){
                    var href=location.href.split("back=")[1];
                    if(href){
                        location.href=href;
                    }else{
                        location.href="index.html";
                    }
                }else{
                    alert("用户名密码错误！");
                }
            }
        })
    })
});


/******** 判断注册、返回登录、忘记密码--点击事件 ********/
$(function(){
    var $login=$("#main>.container>.login");
    var $reg=$("#main>.container>.reg");
    var $reset=$("#main>.container>.reset");
	/* 登录框-忘记密码 点击事件 */
    $("[data-toggle=resetpwd]").click(function(){
        $login.fadeOut(100);
        $reset.fadeIn();

    })
	/* 登录框-注册 点击事件 */
    $("[data-toggle=register]").click(function(){
        $login.fadeOut(100);
        $reg.fadeIn();
    })
	/* 注册框-返回登录 点击事件 */
    $("[data-toggle=reglogin1]").click(function(){
        $reg.fadeOut(100);
        $login.fadeIn();
    })
	/* 重置密码框-返回登录 点击事件 */
    $("[data-toggle=reglogin2]").click(function(){
        $reset.fadeOut(100);
        $login.fadeIn();
    })
	/*手机号输入框*/
    var $phone=$("form>.form_group>.input_group>input.phone");
    var $upwd=$("form>.form_group>.input_group>input.form-control");
    $("#btn").submit(function(e){
        if($phone.val().length!==11){
            e.preventDefault();
            $("form>.form_group>.error_msg").show();
        }else{
            $txtName.next().html();
            if($upwd.val().length<6){
                e.preventDefault();
                $("form>.form_group>.error_msg").show();
            }
        }
    })
})