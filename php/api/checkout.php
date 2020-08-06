<?php

$data = json_decode(file_get_contents("php://input"), TRUE);

$cdate = $data['cdate'];
$croom = $data['croom'];

require 'db.php';
 // last booking

$lastchecklogsql = "SELECT MAX(id) as cid FROM check_log WHERE room_id = $croom";

$lastcheckquery = mysqli_query($con , $lastchecklogsql);

$lastchecklog = mysqli_fetch_array($lastcheckquery);

$lastchecklog_id = $lastchecklog['cid'];

$dateupdate = "update check_log set checkout_time='$cdate' where room_id=$croom and id=$lastchecklog_id";

$status = "update room set room_status = 1 where room_id=$croom";
$rs = array();
if(!mysqli_query($con , $dateupdate)){
$rs['error'] = mysqli_error($con);
}

mysqli_query($con , $status);

$rs['dateupdate'] = $dateupdate;
$rs['status'] = $status;

echo json_encode($rs);

?>