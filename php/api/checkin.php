<?php

$data = json_decode(file_get_contents("php://input"), TRUE);

$cdate = $data['cdate'];
$croom = $data['croom'];

require 'db.php';

$sql = "insert into check_log values('' , '$cdate' , '' , '$croom')";

$status = "update room set room_status = 2 where room_id=$croom";

mysqli_query($con , $sql);
mysqli_query($con , $status);

$rs = array();

$rs['sql'] = $sql;
$rs['sql2'] = $status;

echo json_encode($rs);

?>