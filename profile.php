<?php
session_start();
require 'dbconfig/config.php';
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>CartMart | PROFILE</title>
	<link href="https://fonts.googleapis.com/css?family=Ubuntu" type="text/css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Oswald" type="text/css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	

	<style>
		*{
	margin:0;
	padding: 0;
}
body{
	background: #eeeeee;
}

.tm-container{
	max-width: 1100px;
	margin: 0 auto;

}
.tm-header{
	background: #ffffff;
}
.tm-header::after{
	content: " ";
	clear: both;
	display: block;
	visibility: none;

}


.tm-logo{
	float:left;

}
.tm-nav{
	width: 700px;
	float: right;
	font-size: 25px;

}
.tm-nav ul li{
	display: inline-block;
	font-family: 'Ubuntu', sans-serif;
}
.tm-nav ul li a{
	padding:10px 20px;
	text-decoration: none;
	color: #303030;
	line-height: 60px;
}

.tm-nav ul li a:hover{
	color: #3e99ff;
}

#list{
	width: 400px;
	height: 450px;
	position: absolute;
	top: 110px;
	left: 10px;
	background-color: white;
}
#name{
	color: black;
	font-family: 'Oswald', sans-serif;
	
	font-size: 24px;
	position: absolute;
	top: 100px;
	left: 450px;

}

#caption{
	color: black;
	font-family: 'Ubuntu', sans-serif;
	font-size: 18px;
	position: absolute;
	top: 140px;
	left: 450px;

}


#box1{
	background-color: white;
	position: absolute;
	top: 180px;
	left: 450px;
	width: 800px;
	height: 250px;
	border: solid black 1px;
}

#top{
	width: 400px;
	height: 50px;
	position: absolute;
	top: 0px;
	left: 0px;
	background-color: #13c805

	
}
#top p{
	color: white;
	font-family: 'Ubuntu', sans-serif;
	font-size: 18px;
	text-align: center;
	padding: 15px;
	
}
#list ul{
	position: absolute;
	top: 60px;
	left: 70px;
	padding: 70px;

text-align: center;

list-style-type: none;
line-height: 35px;
}

#list ul a{
	color: black;
	font-family: 'Open+Sans', sans-serif;
	font-size: 20px;

	text-decoration: none;


	
}
#list ul a:hover{
	

	text-decoration: underline;


	
}

#welcome{
	color: black;
	font-family: 'Oswald', sans-serif;
	
	font-size: 48px;
	position: absolute;
	top: 100px;
	left: 450px;
}
#name{
	color: black;
	font-family: 'Oswald', sans-serif;
	
	font-size: 64px;
	position: absolute;
	top: 150px;
	left: 535px;
}

	</style>

</head>
<body>
<header class="tm-header" >
	<div class="tm-container">
		
	<img  src="cart.png" height="70" width="100" class="tm-logo">

	

		<nav class="tm-nav ">
			<ul>
				<li><a href="index.html" font size="1">Home</a></li>
				<li>|</li>
				<li><a href="food.html">Food</a></li>
				<li>|</li>
				<li><a href="travel.html">Travel</a></li>
				<li>|</li>
				<li><a href="shop.html">Shop</a></li>
				<li>|</li>
				<li><a href="profile.html">Profile</a></li>
			</ul>
		</nav>

		
		<p id="welcome">Welcome to your profile !</p>
		<p id="name">
		<?php
	echo $_SESSION['username']
?>
	

		</p>
		

	
		
	
	</div>

	
	
	
	</header>
	

	
</body>
</html>