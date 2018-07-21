<?php
//data/products
require_once("../init.php");
@$lid=$_REQUEST["lid"];
$sql="SELECT * FROM `udw_product_pic` WHERE product_id=$lid";
$result=mysqli_query($conn,$sql);
$re=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($re);