<?php

require "./controller/booking.php";
require "./controller/room.php";
$id = $_GET['id'];

addbooking();
updatestatus(3 , $id);
$data = array();
echo json_encode($data);

?>