<?php

define('DB_USER', 'test');
define('DB_PASSWORD', 'password');
define('DB_HOST', 'localhost');
define('DE_NAME', 'eventor');

$dbc = @mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DE_NAME);

if($dbc){
	echo "worked!";
}

if($dbc == false){
	echo "not working";
}