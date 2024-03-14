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

// Process form data
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST["id"];
    $name = $_POST["name"];
    $phone = $_POST["phone"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $confirmpassword = $_POST["confirm"];
}

$q="select * from signup where id='$id' && email='$email'";

$result=mysqli_query($conn,$q);
$num=mysqli_num_rows($result);

if($num == 1){
    echo "<script> alert('Duplicate Data'); </script>";
    header("Refresh:1; url=index.php");
}
else{
    $sql = "INSERT INTO signup (id, name, phone, email, password, confirmpassword) VALUES ('$id', '$name', '$phone', '$email', '$password', '$confirmpassword')";
    if(mysqli_query($conn,$sql)){
    echo "<script> alert('Signup Successfully'); </script>";}
    header("Refresh:1; url=index.php");
}

$conn->close();
?>