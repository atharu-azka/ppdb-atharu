    <!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Menu Login</title> 
		<link rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
	  </head>
	  <body>
		<?php
        if(isset($_GET['pesan'])){
            if($_GET['pesan']=="gagal"){
                echo "<div>username atau password salah!</div>";
            }
        }
        ?>
		<div class="container">
		  <div class="wrapper">
			<div class="title"><span>Menu Login</span></div>
			<form action="cek_login.php" method="post">
			  <div class="row">
				<i class="fas fa-user"></i>
				<input type="text" name="username" placeholder="Username" required>
			  </div>
			  <div class="row">
				<i class="fas fa-lock"></i>
				<input type="password" name="password" placeholder="Password" required>
			  </div>
			  <div class="row button">
				<input type="submit" value="Login">
			  </div>
			  <div class="signup-link">Harap masukan username/password dengan benar!!</div>
			</form>
		  </div>
		</div>
	  </body>
	</html>