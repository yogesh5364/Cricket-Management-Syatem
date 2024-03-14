<?php

// Database configuration
$hostname = "localhost"; // Change to your database hostname
$username = "root"; // Change to your database username
$password = ""; // Change to your database password
$database = "cricket"; // Change to your database name

// Create a connection
// $mysqli = new mysqli($hostname, $username, $password, $database);
$conn = mysqli_connect("localhost","root","","cricket");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

session_start();
if(!$_SESSION['uname']){
    echo "<script> alert('Please login first') </script>";
    header('Location: ../index.php');
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Cricket - Account Update</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="signup.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="icon" type="image/x-icon" href="cricket-icon.png">
    <link href="https://fonts.googleapis.com/css2?family=Bruno+Ace+SC&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
</head>
<body>
    <header>
        <nav>
            <div class="one"> 
                <img src="cricket-logo.png" alt="Cricket-Logo">
            </div>
            <div class="two"></div>
            <div class="lang">
                <button class="btn">
                    <span class="material-symbols-outlined">language</span>
                    en-IN
                </button>
            </div>
        </nav>
    </header>

    <?php
        // session_start();
        $id=$_SESSION['id'];
        $q="SELECT * from signup where id=$id";
        $res=mysqli_query($conn,$q);
        $row=mysqli_fetch_array($res);
        $name=$row['uname'];
        $email=$row['email'];
    ?>

    <div class="account">
        <form action="update.php" method="post" name="userinfo" onsubmit="return validate()">
            <p style="font-size: 26px;">Account Update</p>
            User Name<br>
            <input type="text" placeholder="<?php echo $name; ?>" name="uname"><br><br>
            Email<br>
            <input type="email" placeholder="<?php echo $email; ?>" name ="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"><br><br>
            Password<br>
            <input type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"><br><br>
            Confirm Password<br>
            <input type="password" name="confirm" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"><br><br>

            <button class="btn" id="submit" type="submit">Sign Up</button><br><br>
        </form>
    </div>

    <footer>
        <div class="foot">
            <div class="social-container">
                <ul class="social-icons">
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                    <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                </ul>
            </div>
        </div>
    </footer>

    <script src="signup.js"></script>
</body>
</html>