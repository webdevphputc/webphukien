<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webphukien";
$port = 3366;

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname, $port);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
 