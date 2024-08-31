<!DOCTYPE html>
<html lang="en">
<?php
include("../connection/connect.php");
error_reporting(0);
session_start();

if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    if (!empty($username) && !empty($password)) {
        // Prepare and execute the query
        $loginquery = "SELECT * FROM admin WHERE username = ?";
        $stmt = mysqli_prepare($db, $loginquery);
        mysqli_stmt_bind_param($stmt, "s", $username);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);

        // Verify the password
        if ($row && password_verify($password, $row['password'])) {
            $_SESSION["adm_id"] = $row['adm_id'];
            header("Location: dashboard.php"); // Use header() for redirection
            exit(); // Ensure no further code is executed
        } else {
            echo "<script>alert('Invalid Username or Password!');</script>";
        }
    } else {
        echo "<script>alert('Username and Password cannot be empty!');</script>";
    }
}
?>

<head>
  <meta charset="UTF-8">
  <title>Kobe Pinoy Plates - Admin</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
  <link rel="stylesheet" href="css/login.css">
  <link rel="icon" href="images/favicon.png" type="image/png">
</head>

<body style="background-color: #a2a8d3;">
  <div class="container">
    <div class="info">
      <br><br><br><br><br>
      <h1>Admin Login</h1>
    </div>
  </div>
  <div class="form">
    <span style="color:red;"><?php echo $message; ?></span>
    <span style="color:green;"><?php echo $success; ?></span>
    <form class="login-form" action="index.php" method="post">
      <input type="text" placeholder="Username" name="username" />
      <input type="password" placeholder="Password" name="password" />
      <input type="submit" name="submit" value="Login" />
    </form>
  </div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script src='js/index.js'></script>
</body>

</html>