<?php
require_once("../init.php");
@$kw=$_REQUEST["kw"];
@$pno=$_REQUEST["pno"];
@$pageSize=$_REQUEST["pageSize"];
//对参数进行判断，如果参数无效，设置默认值 pno=1，pageSize=20
if(!$kw){
    $kw="";
}
if(!$pno){
    $pno=1;
}
if(!$pageSize){
    $pageSize=20;
}
//创建正则表达式对参数进行验证
$reg='/^[0-9]{1,}$/';
$rs=preg_match($reg,$pno);
if(!$rs){
    die('{"code":-1,"msg":"页码格式不正确！"}');
}
$rs=preg_match($reg,$pageSize);
if(!$rs){
    die('{"code":-1,"msg":"页大小格式不正确！"}');
}
//创建sql语句查询总记录数
$sql="SELECT COUNT(lid) AS c FROM udw_product WHERE title LIKE '%$kw%'";
$result=mysqli_query($conn,$sql);
if(mysqli_error($conn)){
    mysqli_error($conn);
}
$row=mysqli_fetch_row($result);
$pageCount=ceil($row[0]/$pageSize);
//创建sql语句查询当前页内容
$offset=($pno-1)*$pageSize;
$sql=" SELECT *,(select md from udw_product_pic where product_id=lid limit 1) as md";
$sql.=" FROM udw_product where title LIKE '%$kw%' LIMIT $offset,$pageSize";
$rs=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($rs,MYSQLI_ASSOC);
//返回结果，json
$output=["pno"=>$pno,"pageSize"=>$pageSize,"pageCount"=>$pageCount,"data"=>$rows];
echo json_encode($output);

