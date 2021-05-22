<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
	<title>Registration system PHP and MySQL</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body class="logbod">

	<div class="top">
		<h2 class="h21">Please Login or Signup to continue</h2> 
	</div>  
	
	
	<form method="post" action="login.php">

		<?php include('errors.php'); ?>
	
		<div class="data">
			<img class="pic1" src="pics/quiz.png">
			<label>Username:</label>
			<input type="text" name="username" placeholder="Elvis722"  ><br>
			
			<label>Password:</label>
			<input type="password" name="pwd" placeholder="Your password"> <br>
		
			<button type="submit" class="btn" name="login">Login</button>
		
		
		<p class="data2">
			If you haven't sign up yet do so >>> <a class="link1" href="signup.php">Sign up</a>
		</p>
		</div>
	</form>


</body>
</html>