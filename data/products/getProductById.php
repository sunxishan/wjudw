<?php
//data/products/getProductById.php
require_once("../init.php");
@$lid=$_REQUEST["lid"];
$output=[
	"product"=>[],
	"pics"=>[],
	"specs"=>[]
];
if($lid!=null){
	$sql="SELECT * FROM udw_product where lid=$lid";
	$result=mysqli_query($conn,$sql);
	$output["product"]=mysqli_fetch_all($result,1)[0];
	$sql="SELECT * FROM udw_product_pic where product_id=$lid";
	$result=mysqli_query($conn,$sql);
	$output["pics"]=mysqli_fetch_all($result,1);
	$fid=$output["product"]["family_id"];
	$sql="SELECT lid,spec FROM udw_product where family_id=$fid";
	$result=mysqli_query($conn,$sql);
	$output["specs"]=mysqli_fetch_all($result,1);
}
echo json_encode($output);