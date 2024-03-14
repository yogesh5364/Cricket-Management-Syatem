<!DOCTYPE html>
<html lang="en">
<head>
    <title>Cricket - Sign in</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bruno+Ace+SC&display=swap" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="cricket-icon.png">
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
    <div class="account">
        <form action="login.php" method="post" name="userinfo" onsubmit="return validate()">
            <p style="font-size: 26px;">Sign In</p>
            User ID<br>
            <input type="text" name="id"><br><br>
            Password<br>
            <input type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"><br><br>
            <button class="btn" type="submit">Sign In</button></a><br><br>
            <p class="sign"><a href="#">Trouble Signing In?</a></p><br>
            <div class="or">Or</div><br>
            <p class="sign"><a href="signup.html">Create Account</a></p>
            <!-- <button class="btn1" type="submit">Create Account</button><br><br> -->
        </form>
    </div><br>
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
    <script src="login.css"></script>
</body>
</html>