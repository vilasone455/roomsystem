<?php
require './db.php';

$sql = "SELECT room.* , status.status_name , type.type_name FROM room 
INNER JOIN status ON status.id = room.room_status
INNER JOIN type ON type.id = room.room_type";
$rs = mysqli_query($con , $sql);
$datas = array();

while ($row = mysqli_fetch_array($rs)) {

    $id = $row['room_id'];
    $code = $row['room_code'];
    $status = $row['room_status'];
    $type = $row['room_type'];
    $price = $row['room_price'];
    $bed = $row['room_bed'];

    $add = array(
        'room_id' => $id,
        'room_code' => $code,
        'room_status' => $status,
        'room_type' => $type,
        'room_price' => $price,
        'room_bed' => $bed,
        'status_name' => $row['status_name'],
        'type_name' => $row['type_name']
    );

    array_push($datas , $add);
}

echo json_encode($datas);

?>