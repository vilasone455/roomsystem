<?php
function addroom(){
$data = json_decode(file_get_contents("php://input"), TRUE);
require './db.php';
$rname = $data['room_code'];
$rtype = $data['room_type'];
$rprice = $data['room_price'];
$rstatus = $data['room_status'];
$rbed = $data['room_bed'];
$sql = "insert into room value('','$rname','$rtype','$rprice','$rstatus','$rbed')";
mysqli_query($con , $sql );
$datas = array();
$datas['sql'] = $sql;
echo json_encode($datas);
}

function editroom(){
require './db.php';
$data = json_decode(file_get_contents("php://input"), TRUE);
$id = $_GET['id'];
$rname = $data['room_code'];
$rtype = $data['room_type'];
$rprice = $data['room_price'];
$rstatus = $data['room_status'];
$rbed = $data['room_bed'];
$sql = "update room set room_code='$rname', room_type='$rtype', room_price='$rprice', 
room_status='$rstatus', room_bed='$rbed' where room_id = $id";
$datas = array();
$datas['sql'] = $sql;
mysqli_query($con , $sql );
echo json_encode($datas);
}

function removeroom(){
require "db.php";
$id = $_GET['id'];
$sql = "delete from room where room_id= $id";
$datas = array();
$datas['sql'] = $sql;
mysqli_query($con , $sql );
echo json_encode($datas);
}

function fetchroom(){


}


//user perform booking => add booking => update status to 3 => update room ui


function updatestatus($n , $id){
    require 'db.php';
    $sql = "update room set room_status = $n where room_id=$id";
    mysqli_query($con , $sql);
}

?>
