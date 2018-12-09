<?php   
 session_start();  
 $connect = mysqli_connect("localhost", "root", "", "cartmart");  
 if(isset($_POST["add_to_cart"]))  
 {  
      if(isset($_SESSION["shopping_cart13"]))  
      {  
           $item_array_id = array_column($_SESSION["shopping_cart13"], "item_id");  
           if(!in_array($_GET["id"], $item_array_id))  
           {  
                $count = count($_SESSION["shopping_cart13"]);  
                $item_array = array(  
                     'item_id'               =>     $_GET["id"],  
                     'item_name'               =>     $_POST["hidden_name"],  
                     'item_price'          =>     $_POST["hidden_price"],  
                     'item_quantity'          =>     $_POST["quantity"]  
                );  
                $_SESSION["shopping_cart13"][$count] = $item_array;  
           }  
           else  
           {  
                echo '<script>alert("Item Already Added")</script>';  
                echo '<script>window.location="express.php"</script>';  
           }  
      }  
      else  
      {  
           $item_array = array(  
                'item_id'               =>     $_GET["id"],  
                'item_name'               =>     $_POST["hidden_name"],  
                'item_price'          =>     $_POST["hidden_price"],  
                'item_quantity'          =>     $_POST["quantity"]  
           );  
           $_SESSION["shopping_cart13"][0] = $item_array;  
      }  
 }  
 if(isset($_GET["action"]))  
 {  
      if($_GET["action"] == "delete")  
      {  
           foreach($_SESSION["shopping_cart13"] as $keys => $values)  
           {  
                if($values["item_id"] == $_GET["id"])  
                {  
                     unset($_SESSION["shopping_cart13"][$keys]);  
                     echo '<script>alert("Item Removed")</script>';  
                     echo '<script>window.location="express.php"</script>';  
                }  
           }  
      }  
 }  
 ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>CartMart | PIZZA</title>
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
	left: 20px;
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
#box1{
	background-color: white;
	width: 800px;
	height: 250px;
	border: solid black 1px;
}
#b1{
	position: relative;
	top: 25px;
	left: 30px;
}

#b1name{
	position: relative;
	top: -180px;
	left: 255px;
	font-family: Adobe Fan Heiti Std;
	font-size: 24px;
	color: black;
	 
}
#b1d{
	position: relative;
	top: -170px;
	left: 255px;
	font-family: Lucida Sans Unicode;
	font-size: 18px;
	color: black;

}
.cartbutton{
	width: 150px;
	padding: 20px;
	position: relative;
	top: -140px;
	left: 255px;
	border: solid black;
	font-size: 20px;
    color: black;
    
    overflow: hidden;
    font-family: 'Oswald', sans-serif;

}
#c1 a{
	
text-decoration: none;
	width: 130px;
	padding: 20px;
	position: relative;
	top: 170px;
	left: 255px;
	border: solid black;
	font-size: 20px;
    color: black;
    
    overflow: hidden;
    font-family: 'Oswald', sans-serif;
    
	
}
#holder{
	background-color: white;
	position: absolute;
	top: 180px;
	left: 450px;
	width: 800px;
	
	border: solid black 1px;

}
.q{
	position: relative;
	left: 240px;
	top: -120px;
}

#maincart{
	position: absolute;
	top: 1500px;
	border: solid black 3px;

}
#maincart th,td{
			border: 2px solid #CCC;
			border-collapse: collapse;
			padding: 15px;
			text-align: center;
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
		<div id="list">
	<div id="top">
			<p>RESTURANTS</p>
		</div>
		<ul>
			<li> <a href="hut.php"> PIZZA HUT</a></li>
			
			<li> <a href="inn.php"> PIZZA INN</a></li>
			<li> <a href="westeros.php"> WESTEROS</a></li>
			<li> <a href="sabroso.php"> SABROSO</a></li>
			<li> <a href="express.php"> PIZZA EXPRESS</a></li>
		</ul>
	</div>

	<p id="name"> Pizza Express</p>
	<p id="caption"> Find out your favorite pizzas from the top resturants of Dhaka. Add to cart to order.</p>

	<br />  
           <div id="holder">  
                
                <?php  
                $query = "SELECT * FROM express ORDER BY id ASC";  
                $result = mysqli_query($connect, $query);  
                if(mysqli_num_rows($result) > 0)  
                {  
                     while($row = mysqli_fetch_array($result))  
                     {  
                ?>  
                <div>  
                     <form method="post" action="express.php?action=add&id=<?php echo $row["id"]; ?>">  
                          <div id="box1">  
                                <img id="b1" src="<?php echo $row["image"]; ?>">
                               <h4 id="b1name"><?php echo $row["name"]; ?></h4>  
                               <h5 id="b1d">Taka <?php echo $row["price"]; ?></h5>  
                               <input type="text" name="quantity" class="q" value="1" />  
                               <input type="hidden" name="hidden_name" value="<?php echo $row["name"]; ?>" />  
                               <input type="hidden" name="hidden_price" value="<?php echo $row["price"]; ?>" />  
                               <input type="submit" name="add_to_cart" style="margin-top:5px;" class="cartbutton" value="Add to Cart" />  
                          </div>  
                     </form>  
                </div>  
                <?php  
                     }  
                }  
                ?>  
<div style="clear:both"></div> 
				<div id="maincart">

                <br />  
                <h3>Order Details</h3>  
                <div class="table-responsive">  
                     <table class="table table-bordered">  
                          <tr>  
                               <th width="40%">Item Name</th>  
                               <th width="10%">Quantity</th>  
                               <th width="20%">Price</th>  
                               <th width="15%">Total</th>  
                               <th width="5%">Action</th>  
                          </tr>  
                          <?php   
                          if(!empty($_SESSION["shopping_cart13"]))  
                          {  
                               $total = 0;  
                               foreach($_SESSION["shopping_cart13"] as $keys => $values)  
                               {  
                          ?>  
                          <tr>  
                               <td><?php echo $values["item_name"]; ?></td>  
                               <td><?php echo $values["item_quantity"]; ?></td>  
                               <td>$ <?php echo $values["item_price"]; ?></td>  
                               <td>$ <?php echo number_format($values["item_quantity"] * $values["item_price"], 2); ?></td>  
                               <td><a href="express.php?action=delete&id=<?php echo $values["item_id"]; ?>"><span class="text-danger">Remove</span></a></td>  
                          </tr>  
                          <?php  
                                    $total = $total + ($values["item_quantity"] * $values["item_price"]);  
                               }  
                          ?>  
                          <tr>  
                               <td colspan="3" align="right">Total</td>  
                               <td align="right">$ <?php echo number_format($total, 2); ?></td>  
                               <td></td>  
                          </tr>  
                          <?php  
                          }  
                          ?>  
                     </table>  
                </div>  
					

				</div>
	

	
	
	</div>

	
	</header>
	

	
</body>
</html>