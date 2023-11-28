<?php
$servername = "bigswfmt9xdwwxeosjaa-mysql.services.clever-cloud.com";
$username = "uyjojewbw23wwx47";
$password = "W06QhyULqIFFczwaql4w";
$dbname = "bigswfmt9xdwwxeosjaa";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {

  die("Connection failed: " . $conn->connect_error);
}
