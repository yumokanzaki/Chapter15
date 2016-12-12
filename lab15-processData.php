<?php

$SITEID = 1;//set to the only site in the DB.
$id = mysql_real_escape_string($_GET['id']);
$type = mysql_real_escape_string($_GET['type']);
$time = mysql_real_escape_string($_GET['time']);
$class = mysql_real_escape_string($_GET['class']);
include_once("connectStats.php");

print_r($_GET);
if($type=="mouseOut"){
  //We want to update the corresponding event with the right time and new state.
  if($id!="")
    $sql = "UPDATE Events SET Time=$time-Time, Type=1 WHERE DOMID='$id' AND Type=0";
  else
    $sql = "UPDATE Events SET Time=$time-Time, Type=1 WHERE  ClassID='$class' AND Type=0";
  mysql_query($sql);
 }
 else if ($type=="clicked"){
     $sql = "INSERT INTO Events(DOMID,ClassID,Type) VALUES('$id','$class',2)";
     mysql_query($sql);
 }
 else{
     $sql = "INSERT INTO Events(DOMID,ClassID,Time,Type) VALUES('$id','$class',$time,0)";
     mysql_query($sql);
 }
echo $sql;
?>