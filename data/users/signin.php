<?php
//data/users/signin.php
require_once("../init.php");
@$phone=$_REQUEST["phone"];
@$upwd=$_REQUEST["upwd"];
if($phone!=null&&$upwd!=null){
	$sql="select * from udw_user where phone='$phone' and binary upwd='$upwd'";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	if($row!=null){
		session_start();
		$_SESSION["uid"]=$row[0];
		echo "登录成功!";
	}else{
		echo "手机号或密码错误!";
	}
}
