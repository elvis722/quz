<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style>
		*{
			background-color: rgb(20, 56, 44);
		}
		.signupinfo{ 
			text-align: center;
			font-size: 50px;
			background-color: rgb(0, 43, 28);
		}
		.signupinfo input {
			font-size: 28px;
			color:lightblue;
		}
		.h22 {
			text-align: center;
			color: gold;
			font-size: 40px;
		}
		.coll {
			color:gold;
			font-size: 30px;
			
		}
		.aa22 {
			font-size: 20px;
			color:gold;
			text-align: right;

		}

		.btnn {
			font-size: 20px;
			color:lightgreen;
		}
		.btn {
			color: gold;		}


	</style>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="">
    	<p class="aa22">
			If you already have an account go to: <a href="login.php"><button class="btnn">Sign in</button></a>
		</p>
	</div>
	<div class="header">
		<h2 class="h22">Please fill the requirements to register</h2>
	</div>

	<form method="post" action="signup.php">

		<?php include('errors.php'); ?>

		<div class="signupinfo">
			<label class="coll">Username</label> <br>
			<input class="input" type="text" name="username" placeholder="elvis722" value="<?php echo $username; ?>"> <br>
	
			<label class="coll">E-mail</label><br>
			<input type="email" name="mail" placeholder="elvisa@auk.org" ><br>
		
			<label class="coll">Password</label><br>
			<input type="password" placeholder="Your password" name="pwd1"><br>
		
			<label class="coll">Confirm password</label><br>
			<input type="password" name="pwd2" placeholder="repeat the above password"><br>
	
			<button type="submit" class="btn" name="regUsr">Signup	</button>
		</div>
		
	</form>
</body>
</html>
