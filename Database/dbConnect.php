<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "eventor";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO `eventor`.`board_game` (`bo_id`, `game_name`) VALUES ('2', boardgame)";
$sql = "INSERT INTO `eventor`.`students` (`s_id`, `major`, `class_of`, `college`, `room_no`) VALUES ('1', 'IBA', '2018', 'C3', '210')";
$sql = "INSERT INTO `eventor`.`event` (`e_id`, `u_id`, `l_id`, `name`, `e_time`) VALUES ('8', '8', '8', 'camel', '2')";
$sql = "INSERT INTO `eventor`.`users` (`u_id`, `password`, `username`, `email`) VALUES ('7', 'yi', 'yi', 'yi@mail.com')";
$sql = "INSERT INTO `eventor`.`join_event` (`u_id`, `e_id`) VALUES ('1', '2')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>