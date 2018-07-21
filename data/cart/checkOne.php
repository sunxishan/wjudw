<?php
//data/cart/checkOne.php
require_once("../init.php");
@$iid=$_REQUEST["iid"];
@$is_checked=$_REQUEST["is_checked"];
if($iid!=null&&$is_checked!=null){
	$sql="UPDATE udw_shopping_item SET is_checked=$is_checked WHERE iid=$iid";
	mysqli_query($conn,$sql);
}

