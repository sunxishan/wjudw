<?php
//data/index/getProducts.php
require_once("../init.php");
$sql="select * from udw_product_family";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));