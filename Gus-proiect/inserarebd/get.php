<?php

mysql_connect("sql205.byethost7.com", "b7_16118976", "camius");

mysql_select_db("b7_16118976_databaseimage");



$id=addslashes($_REQUEST['id']);



$image=mysql_query("select * from store where id=$id");

$image=mysql_fetch_assoc($image);

$image=$image['image'];



header("Content-type:image/jpeg");

echo $image;

?>