<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Kobe Pinoy Plates - Login</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/animsition.min.css">
  <link rel="stylesheet" href="css/animate.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="icon" href="images/img/favicon.png" type="image/png">
  <style type="text/css">
    body {
      background-color: #f8f9fa;
      font-family: 'Roboto', sans-serif;
    }

    .form-module {
      max-width: 400px;
      margin: 50px auto;
      padding: 40px;
      background: #ececec;
      border-radius: 8px;
      box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
    }

    .form-module h2 {
      margin-bottom: 30px;
      color: #333;
      font-weight: 700;
    }

    .form-module input[type="text"],
    .form-module input[type="password"] {
      width: 100%;
      padding: 12px 15px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 4px;
      transition: all 0.3s ease;
    }

    .form-module input[type="text"]:focus,
    .form-module input[type="password"]:focus {
      border-color: #5C4AC7;
      box-shadow: 0 0 5px rgba(92, 74, 199, 0.3);
    }

    .form-module input::placeholder {
      color: #999;
      transition: color 0.3s ease;
    }

    .form-module input:focus::placeholder {
      color: #5c4ac7;
    }

    #buttn {
      width: 100%;
      padding: 12px;
      background-color: #5c4ac7;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    #buttn:hover {
      background-color: #3d3191;
    }

    .cta {
      margin-top: 20px;
      text-align: center;
    }

    .cta a {
      color: #5c4ac7;
      text-decoration: none;
      font-weight: 500;
    }

    .cta a:hover {
      text-decoration: underline;
    }

    @media (max-width: 768px) {
      .form-module {
        padding: 20px;
      }

      .form-module h2 {
        font-size: 24px;
      }
    }

    @media (max-width: 576px) {
      .form-module {
        padding: 15px;
      }

      .form-module h2 {
        font-size: 20px;
      }
    }
  </style>
</head>

<body>
  <header id="header" class="header-scroll top-header headrom">
    <nav class="navbar navbar-dark">
      <div class="container">
        <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">&#9776;</button>
        <a class="navbar-brand" href="index.php"> <img class="img-rounded" src="images/logo.png" alt=""> </a>
        <div class="collapse navbar-toggleable-md float-lg-right" id="mainNavbarCollapse">
          <ul class="nav navbar-nav">
            <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a> </li>
            <li class="nav-item"> <a class="nav-link active" href="restaurants.php">Restaurants <span class="sr-only"></span></a> </li>
            <?php
            if (empty($_SESSION["user_id"])) {
              echo '<li class="nav-item"><a href="login.php" class="nav-link active">Login</a> </li>
							  <li class="nav-item"><a href="registration.php" class="nav-link active">Register</a> </li>';
            } else {
              echo  '<li class="nav-item"><a href="your_orders.php" class="nav-link active">My Orders</a> </li>';
              echo  '<li class="nav-item"><a href="logout.php" class="nav-link active">Logout</a> </li>';
            }
            ?>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <div style="background-image: url('images/img/login.jpg'); background-size: cover; padding: 60px 0;">
    <?php
    include("connection/connect.php");
    error_reporting(0);
    session_start();
    if (isset($_POST['submit'])) {
      $username = $_POST['username'];
      $password = $_POST['password'];
      if (!empty($_POST["submit"])) {
        $loginquery = "SELECT * FROM users WHERE username='$username' && password='" . md5($password) . "'"; //selecting matching records
        $result = mysqli_query($db, $loginquery); //executing
        $row = mysqli_fetch_array($result);
        if (is_array($row)) {
          $_SESSION["user_id"] = $row['u_id'];
          header("refresh:1;url=index.php");
        } else {
          $message = "Invalid Username or Password!";
        }
      }
    }
    ?>
    <div class="form-module">
      <div class="form">
        <h2>Login Your Account</h2>
        <span style="color:red;"><?php echo $message; ?></span>
        <span style="color:green;"><?php echo $success; ?></span>
        <form action="" method="post">
          <input type="text" placeholder="Username" name="username" />
          <input type="password" placeholder="Password" name="password" />
          <input type="submit" id="buttn" name="submit" value="Login" />
        </form>
      </div>
      <div class="cta">Not registered?<a href="registration.php"> Create an account</a></div>
    </div>
  </div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <footer class="footer">
    <div class="container">
      <div class="bottom-footer">
        <div class="row">
          <div class="col-xs-12 col-sm-3 payment-options color-gray">
            <h5>Payment Options</h5>
            <ul>
              <li>
                <a href="#"> <img src="images/paypal.png" alt="Paypal"> </a>
              </li>
              <li>
                <a href="#"> <img src="images/mastercard.png" alt="Mastercard"> </a>
              </li>
              <li>
                <a href="#"> <img src="images/maestro.png" alt="Maestro"> </a>
              </li>
              <li>
                <a href="#"> <img src="images/stripe.png" alt="Stripe"> </a>
              </li>
              <li>
                <a href="#"> <img src="images/bitcoin.png" alt="Bitcoin"> </a>
              </li>
            </ul>
          </div>
          <div class="col-xs-12 col-sm-4 address color-gray">
            <h5>Address</h5>
            <p>555 Tandang Sora Ave, Philippines</p>
            <h5>Phone: +63 75 696 9698</h5>
          </div>
          <div class="col-xs-12 col-sm-5 additional-info color-gray">
            <h5>Designed and Developed By:</h5>
            <p>Sean Kobe R. Dime</p>
          </div>
        </div>
      </div>
    </div>
  </footer>
</body>

</html>
