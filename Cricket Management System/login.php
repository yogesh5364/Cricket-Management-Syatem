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

//login
$id=$_POST["id"];
$password=$_POST["password"];

$sql_users= " select * from signup where id = '$id' && password = '$password' ";

$res_users = mysqli_query($conn, $sql_users);
if(mysqli_num_rows($res_users) != 1)
{
    echo "<script> alert('No User Found with Entered ID & Password'); </script>";
    header("Refresh: 1; url=index.php");
}
else if(mysqli_num_rows($res_users) == 1)
{
    $row_users = mysqli_fetch_array($res_users);
    header("Location: home.html");
}
?>