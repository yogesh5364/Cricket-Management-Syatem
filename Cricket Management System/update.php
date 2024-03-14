<?php
// Database configuration
$hostname = "localhost"; // Change to your database hostname
$username = "root"; // Change to your database username
$password = ""; // Change to your database password
$database = "cricket_db"; // Change to your database name

// Create a connection
$conn = mysqli_connect($hostname, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$id = $_POST["id"];
$nid = $_POST["nid"];
$email = $_POST["email"];
$password = $_POST["password"];
$confirmpassword = $_POST["confirm"];

$q = "select * from signup where id='$id'";

$result = mysqli_query($conn, $q);
$num = mysqli_num_rows($result);

$sql = "UPDATE signup SET id='$nid', email='$email', password='$password', confirmpassword='$confirmpassword' WHERE id='$id'";

if ($num == 1 && $conn->query($sql) === TRUE){
    echo "<script> alert('Account Updated Successfully'); </script>";
    header("Refresh:1; url=home.html");
}
else{
    echo "User ID doesn't Match with this Details" . $conn->error;
    // echo "<script> alert('User ID and Email doesn't Match'); </script>";
    header("Refresh:2; url=home.html");
}

$conn->close();
?>
