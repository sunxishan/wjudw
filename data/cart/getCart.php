<?php
//data/cart/getCart.php
require_once("../init.php");
session_start();
@$uid=$_SESSION["uid"];
$sql="SELECT *,(select sm from udw_product_pic where pid=iid limit 1) as sm FROM udw_product inner join udw_shopping_item on   lid=iid WHERE user_id=$uid";
$as=mysqli_query($conn,$sql);
$qw=mysqli_fetch_all($as,MYSQLI_ASSOC);
echo json_encode($qw);
