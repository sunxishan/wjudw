<?php
//data/cart/deleteCart.php
require_once("../init.php");
@$iid=$_REQUEST["iid"];
if($iid!=null){
	$sql="delete from udw_shopping_item where iid=$iid";
	$result=mysqli_query($conn,$sql);
}

