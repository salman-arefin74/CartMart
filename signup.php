<?php
require 'dbconfig/config.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>CartMart | SIGN UP</title>
	<link rel="stylesheet" type="text/css" href="sign.css">
	<link href="https://fonts.googleapis.com/css?family=Acme" type="text/css" rel="stylesheet">
</head>
<body>
	<div class="tm-container">
	<img src="cart.png">
		<form  action="signup.php" method="post">
			<div class="tm-input">
			<input type="text" name="name" placeholder="Name">
			</div>
			<div class="tm-input">
			<input type="text" name="username" placeholder="Username">
			</div>
			<div class="tm-input">
			<input type="password" name="password" placeholder="Password">
			</div>
			<div class="tm-input">
			<input type="password" name="cpassword" placeholder="Re-enter Password">
			</div>
			<input type="submit" name="submitbtn" value="Create Account" class="tm-btn"><br>
		</form>

		<?php
			if(isset($_POST['submitbtn']))
			{
				@$username=$_POST['username'];
				@$password=$_POST['password'];
				@$cpassword=$_POST['cpassword'];
				
				if($password==$cpassword)
				{
					$query = "select * from user where username='$username'";
					//echo $query;
				$query_run = mysqli_query($con,$query);
				//echo mysql_num_rows($query_run);
				if($query_run)
					{
						if(mysqli_num_rows($query_run)>0)
						{
							echo '<script type="text/javascript">alert("This Username Already exists.. Please try another username!")</script>';
						}
						else
						{
							$query = "insert into user values('$username','$password')";
							$query_run = mysqli_query($con,$query);
							if($query_run)
							{
								echo '<script type="text/javascript">alert("User Registered.. Welcome")</script>';
								$_SESSION['username'] = $username;
								$_SESSION['password'] = $password;
								header( "Location: login.php");
							}
							else
							{
								echo '<p class="bg-danger msg-block">Registration Unsuccessful due to server error. Please try later</p>';
							}
						}
					}
					else
					{
						echo '<script type="text/javascript">alert("DB error")</script>';
					}
				}
				else
				{
					echo '<script type="text/javascript">alert("Password and Confirm Password do not match")</script>';
				}
				
			}
			else
			{
			}
		?>
		
		
	</div>

</body>
</html>