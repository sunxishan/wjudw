<?php
##判断用户登录是否成功，并给出提示（登录成功/登录失败）

$uname=$_REQUEST["uname"];
$upwd=$_REQUEST["upwd"];

require("init.php");
$sql="select * from udw_user where uname='$uname' and binary upwd='$upwd'";
$result=mysqli_query($conn,$sql);
if($result==false){
	echo "数据库查询失败！！";
}else{
	#从查询结果集中抓取一行
	$row=mysqli_fetch_row($result);
	if($row==null){
		echo "用户名或密码错误，登录失败！！";
	}else{
		echo "登录成功！！";
	}
	
}



?>