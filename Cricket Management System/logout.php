<html>
<head>
    <meta charset="utf-8">
    <title>Logout</title>
</head>
<?php

// Database configuration
$hostname = "localhost"; // Change to your database hostname
$username = "root"; // Change to your database username
$password = ""; // Change to your database password
$database = "cricket_db"; // Change to your database name

// Create a connection
// $mysqli = new mysqli($hostname, $username, $password, $database);
$conn = mysqli_connect("localhost","root","","cricket_db");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

session_start();
if(!$_SESSION['uname']){
    echo "<script> alert('Please login first') </script>";
    header('Location: index.php');
}
?>
<body>
<?php
include('index.php');
// remove all session variables
session_unset();
// destroy the session 
session_destroy();
// Redirect the user to login page after logout.
header('Location: index.php');
?>
</body>
</html>