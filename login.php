<?php
session_start();
require 'dbconfig/config.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>CartMart | Login</title>
	<link rel="stylesheet" type="text/css" href="log.css">
	<link href="https://fonts.googleapis.com/css?family=Acme" type="text/css" rel="stylesheet">
</head>
<body>
	<div class="tm-container">
	<img src="cart.png">
		<form  action="login.php" method="post">
			<div class="tm-input">
			<input type="text" name="username" placeholder="Username">
			</div>
			<div class="tm-input">
			<input type="password" name="password" placeholder="Password">
			</div>
			<input type="submit" name="loginbtn" value="Submit" class="tm-btn"><br>
		</form>
		<a href="">Forget Password?</a>

		<?php
			if(isset($_POST['loginbtn']))
			{
				@$username=$_POST['username'];
				@$password=$_POST['password'];
				$query = "select * from user where username='$username' and password='$password' ";
				//echo $query;
				$query_run = mysqli_query($con,$query);
				//echo mysql_num_rows($query_run);
				if($query_run)
				{
					if(mysqli_num_rows($query_run)>0)
					{
					$row = mysqli_fetch_array($query_run,MYSQLI_ASSOC);
					
					$_SESSION['username'] = $username;
					$_SESSION['password'] = $password;
					
					header( "Location: index.php");
					}
					else
					{
						echo '<script type="text/javascript">alert("No such User exists. Invalid Credentials")</script>';
					}
				}
				else
				{
					echo '<script type="text/javascript">alert("Database Error")</script>';
				}
			}
			else
			{
			}
		?>
		
	</div>

</body>
</html>