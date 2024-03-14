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
    $id = $_POST["id"];
    $email = $_POST["email"];
    $description = $_POST["description"];

    $q = "select * from signup where id='$id' && email='$email'";

    $result = mysqli_query($conn, $q);
    $num = mysqli_num_rows($result);

    $sql = "INSERT INTO feedback (id, email, description) VALUES ('$id', '$email', '$description')";

    if ($num == 1 and $conn->query($sql) === TRUE){
        echo "<script> alert('Feedback Submitted Successfully'); </script>";
        header("Refresh:1; url=home.html");
    }
    else{
        // echo "Error: " . $sql . "<br>" . $conn->error;
        echo ("User ID doesn't Match");
        header("Refresh:2; url=home.html");
    }

    $conn->close();
?>