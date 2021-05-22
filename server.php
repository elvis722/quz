<?php
	session_start();
	$username = "";
	$email    = "";
	$errors = array();
	$_SESSION['success'] = "";

	$db = mysqli_connect('localhost', 'root', '', 'mrquiz');


	if (isset($_POST['login'])) {
		$username = mysqli_real_escape_string($db, $_POST['username']);
		$password = mysqli_real_escape_string($db, $_POST['pwd']);

		if (empty($username)) {
			array_push($errors, "Username is required");
		}
		if (empty($password)) {
			array_push($errors, "Password is required");
		}

		if (count($errors) == 0) {
			$password = ($password);
			$query = "SELECT * FROM people WHERE username='$username' AND password='$password' LIMIT 1";
			$results = mysqli_query($db, $query);

			if (mysqli_num_rows($results) == 1) {

				$logged_in_user = mysqli_fetch_assoc($results);
				echo $logged_in_user['type'];
				$_SESSION['usrin']= true;
				if ($logged_in_user['type'] == 'admin') {
					$_SESSION['isadmin'] = true; 
					$_SESSION['username'] = $username;
					$_SESSION['success']  = "You are now logged in";
					header('location: admin.php');
				}
				else{

				$_SESSION['username'] = $username;
				$_SESSION['success'] = "You are now logged in";
				header('location: index.php');
			}}else {
				array_push($errors, "<styleWrong username/password combination");
			}
		}
	}

	if (isset($_POST['regUsr'])) {
		$username = mysqli_real_escape_string($db, $_POST['username']);
		$mail = mysqli_real_escape_string($db, $_POST['mail']);
		$pwd1 = mysqli_real_escape_string($db, $_POST['pwd1']);
		$pwd2 = mysqli_real_escape_string($db, $_POST['pwd2']);

		if (empty($username)) { array_push($errors, "You cannot singup without a username"); }
		if (empty($mail)) { array_push($errors, "You cannot singup without an email"); }
		if (empty($pwd1)) { array_push($errors, "You cannot singup without an password"); }

		if ($pwd1 != $pwd2) {
			array_push($errors, "Please try again this time try to type the same passwords");
		}

		if (count($errors) == 0) {
			$pwd = ($pwd1);
			$query = "INSERT INTO people (username, mail, password)
					  VALUES('$username', '$mail', '$pwd')";
			mysqli_query($db, $query);

			$_SESSION['username'] = $username;
			$_SESSION['success'] = "You are now logged in";
			header('location: index.php');
		}
	}

?>
