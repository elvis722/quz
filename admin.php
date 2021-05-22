<?php
session_start();
if (!isset($_SESSION['isadmin']) || !$_SESSION['isadmin']) {
	$_SESSION['msg'] = "You must log in first";
	header('location: login.php');
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>People that are admin users</title>
	<style> /**Here we have the styling for the admin users the way they look their screen */
		*{
			background-image: url(./pics/bcg.png);
		}
		}
		.top {
			width: 100%;
			margin: auto ;
			color: white;
			background-color: blue;
			border: 2px solid darkblue;
			border-bottom: none;
			border-radius: 10px 10px 0px 0px;
			padding: 20px;
		}
		.pp {
			font-size: 50px;
			color:white;
			
			
		}
		h3{
			
			color: blue;
			font-size: 40px;
		}


		table { 
			border-collapse: collapse; 
			border-spacing: 2px; 
			border: 4px solid red; 
			width:100%;
			

		}

		th{
			text-align: center;
			padding: 16.2969px;
		}

		td{
			text-align: center;
			padding: 16.2969px;
		}
		h2 {
			font-size:40px;
			
		}
		.ppp {
			text-align: right;
			text-decoration:none; 
			
			
		}
		tr, th {
			color: white;
		}
		.aa {
			color: white;
			text-align: center; 
			text-decoration: none;
			padding:2px;
			
		}
		.bttnn {
			font-size:20px;
			text-align: center;
			background-color:darkblue;
			margin-bottom: 10px;
			border: 4px solid black
		}
	
		
		

	</style>
</head>
<body>
	<div class="lii"> <!-- Here I will add a button that will send us to the log in page-->
		<p class="ppp"> <button class="bttnn"> <a class="aa" href="login.php?logout='1'" ><b>Logout<b></a> </p>	
	</div>

	<div class="header">
		<p class="pp">Users Result in the quiz</p>
	</div>
	<?php //Here starts the connection with database where we have created the specific tables
		$link = mysqli_connect("localhost", "root", "", "mrquiz");
		if($link === false){
			die("Something went wrong couldn't connect. " . mysqli_connect_error());
		}
		$sql = "SELECT * FROM results"; //we are using the data that are in this dable in database
		if($results = mysqli_query($link, $sql)){
			if(mysqli_num_rows($results) > 0){
				echo "<table border=2;>";
				echo "<tr><th>name</th>
					 <th>1</th>
					 <th>2</th>
					 <th>3</th>
					 <th>4</th>
					 <th>5</th>
					 <th>6</th>
					 <th>7</th>
					 <th>8</th>
					 <th>9</th>
					 <th>10</th>
					 <th>11</th>
					 <th>12</th>
					 <th>Result</th></tr>"; //here I just named the top of the table 
			while($r = mysqli_fetch_array($results)){
				echo "<tr>";
						echo "<td>" . $r['name'] . "</td>";
						echo "<td>" . $r['first'] . "</td>";
						echo "<td>" . $r['second'] . "</td>";
						echo "<td>" . $r['third'] . "</td>";
						echo "<td>" . $r['fourth'] . "</td>";
						echo "<td>" . $r['fifth'] . "</td>";
						echo "<td>" . $r['sixth'] . "</td>";
						echo "<td>" . $r['seventh'] . "</td>";
						echo "<td>" . $r['eighth'] . "</td>";
						echo "<td>" . $r['nineth'] . "</td>";
						echo "<td>" . $r['tenth'] . "</td>";
						echo "<td>" . $r['eleventh'] . "</td>";
						echo "<td>" . $r['twelveth'] . "</td>";
						echo "<td>" . $r['res'] . "</td>";
						
				}
				echo "</table>";
		}
		else{
				echo "We couldn't find anything.";
		}
		} else{
		echo "Error: There is something wrong please try later $sql. " . mysqli_error($link);
		}
		mysqli_close($link);
		?>

</body>
</html>
<?php 
	if (isset($_GET['logout'])) {
		session_destroy();
		unset($_SESSION['username']);
		header("location: login.php");
	}

	?>