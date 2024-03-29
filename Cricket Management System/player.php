<!DOCTYPE html>
<html lang="en">
<head>
    <title>Cricket - Player</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="team.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
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
                <button class="btn1">
                    <span class="material-symbols-outlined"><a href="home.html"> home </a></span>
                </button>
            </div>
        </nav>
    </header>

    <div class="account">
        <form action="player.php" method="post">
            <center>
                <p style="font-size: 26px; padding: 20px; color: white;" >Players</p>
            </center>
      
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
                
                // $q1="SELECT * FROM player";

                $q1="SELECT player.*, team.teamname FROM player INNER JOIN team ON player.nationality = team.teamname";

                $result1=mysqli_query($conn,$q1);
                $no=1;
                echo "<table class='team'>
                <tr>
                        <th><br>Player ID &nbsp; <br><br></th>	
                        <th><br> &nbsp; Name &nbsp; &nbsp; &nbsp; <br><br></th>
                        <th><br> &nbsp; &nbsp; Team Name &nbsp; &nbsp; <br><br></th> 
                        <th><br> &nbsp; &nbsp; Role &nbsp; &nbsp; <br><br></th>
                        <th><br> &nbsp; &nbsp; &nbsp; Bat Style &nbsp; &nbsp; &nbsp; <br><br></th>
                        <th><br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Bowl Style &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br><br></th>
                </tr>";
                while($row = mysqli_fetch_array($result1))
                {
                    echo "<tr>";
                    echo "<td <br> <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;" . $row['playerid'] . "&nbsp; <br> &nbsp;";
                    echo "<td <br> <br> &nbsp; &nbsp;" . $row['playername'] . "&nbsp; <br> &nbsp;";
                    echo "<td <br> <br> &nbsp; &nbsp;" . $row['nationality'] . "&nbsp; &nbsp; <br> &nbsp;";
                    echo "<td <br> <br> &nbsp;" . $row['role'] . "&nbsp; &nbsp; <br> &nbsp;";
                    echo "<td <br> <br> &nbsp; &nbsp;" . $row['batstyle'] . "&nbsp; &nbsp; <br> &nbsp; ";
                    echo "<td <br> <br> &nbsp;" . $row['bowlstyle'] . "&nbsp; &nbsp; <br> &nbsp; ";
                    echo "</tr>";
                }
                echo "</table>";
            ?>
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
</body>
</html>
