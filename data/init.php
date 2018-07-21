<?php
#使用PHP连接MySQL服务器
$conn=mysqli_connect('127.0.0.1','root','','udw',3306);
#在执行正式的SQL语句之前要设置连接服务器所用的字符集
mysqli_query($conn,"SET NAMES UTF8");

?>