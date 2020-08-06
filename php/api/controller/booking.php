<?php

function addbooking(){
    require 'db.php';
    $data = json_decode(file_get_contents("php://input"), TRUE);
    $cname = $data['cname'];
    $cname .= " " . $data['clastname'];
    $ctel = $data['ctel'];
    $cdate = $data['cdate'];
    $croom = $data['croom'];
    $cbed = $data['cbed'];
    $sql = "insert into booking values('' , '$cname' , '$ctel' , $cbed , '$cdate' , $croom)";
    mysqli_query($con , $sql);
}

function getLastChecklog(){
    require "db.php";
    $sql = "SELECT max(id) as cid , check_log.checkin_time , check_log.checkout_time , check_log.room_id  
    FROM `check_log` GROUP by room_id";
    $rs = mysqli_query($con , $sql);
    $data = array();
    while ($row = mysqli_fetch_array($rs)) {
        $add = array(
            "check_id" => $row['cid'],
            "check_time" => $row['checkin_time']
        );
        
    }
}

function getBooking(){
    require "db.php";
    $lastbooking_sql = "SELECT MAX(booking.id) as book_id , booking.room_id from booking 
    INNER JOIN room ON room.room_id = booking.room_id
    GROUP by booking.room_id";
    $lastbookings = mysqli_query($con , $lastbooking_sql);
    $data = array();

    while ($row = mysqli_fetch_array($lastbookings)) {
        $bookid = $row['book_id'];
        $sql = "select * from booking where id=$bookid";
        $book_query = mysqli_query($con , $sql);
        $book_detail = mysqli_fetch_array($book_query);
        $add = array(
            "booking_id" => $row['book_id'],
            'room_id' => $row['room_id'],
            'customer_name' => $book_detail['customer_name'],
            'customer_tel' => $book_detail['customer_tel'],
        );
        array_push($data , $add);
    }

    echo json_encode($data);

}

function getActiveBooking(){ // เลือกห้องที่มีกานจองทั่้งหมด
    require "db.php";
    $lastbooking_sql = "SELECT MAX(booking.id) as book_id , booking.* from booking 
    INNER JOIN room ON room.room_id = booking.room_id and room.room_status = 3
    GROUP by booking.room_id";
    $lastbookings = mysqli_query($con , $lastbooking);
    $data = array();

    while ($row = mysqli_fetch_array($lastbookings)) {
        $add = array(
            "booking_id" => $row['book_id'],
            'room_id' => $row['room_id']
        );
        array_push($data , $add);
    }

    echo json_encode($data);

}


?>