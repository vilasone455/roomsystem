<?php
require './db.php';

$sql = "SELECT * FROM status";
$rs = mysqli_query($con , $sql);
$data = array();
while ($r = mysqli_fetch_array($rs)) {
    $add = array(
        "id" => $r['id'],
        "status_name" => $r['status_name']
    );
    array_push($data,$add);
}
echo json_encode($data);

?>