<?php
require './db.php';

$sql = "SELECT * FROM type";
$rs = mysqli_query($con , $sql);
$data = array();
while ($r = mysqli_fetch_array($rs)) {
    $add = array(
        "id" => $r['id'],
        "type_name" => $r['type_name']
    );
    array_push($data,$add);
}
echo json_encode($data);

?>