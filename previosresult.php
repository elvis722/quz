<?php session_start();

if (!isset($_SESSION['username'])) {
	$_SESSION['msg'] = "You must log in first";
	header('location: login.php');
}

?>

<!DOCTYPE html>
<html>
<head>
	<style>
	* {
		margin:auto;
		
	
		background-color: limegreen;
	}
	body {
		margin:auto;

		font-size: 120%;
		background: limegreen;
	}

	.koka {
		margin:auto;
		width: 80%;
		margin: 50px auto 0px;
		color: white;
		background: green;
		text-align: center;
		border: 1px solid #B0C4DE;
		border-bottom: none;
		border-radius: 10px 10px 0px 0px;
		padding: 20px;
	}
	


	.btn52 {
		color: white;
		background: green;
		border-radius: 5px;
		text-decoration:none;
		padding: 10px;
		font-size: 30px;
		text-align:right;
		
		
	}

	table{ 
		border-collapse: blue; 
		border-spacing: 0; 
		border: 4px solid red;
		background-color: blue;
		color:white
	}

	th,td {
		text-align: center;
		padding: 10px;
		background-color:blue;
		font-weight: bold;
	} 
	

	hr{
		height:20px;
		width: 100%
	}

	.wise{
	margin:auto;
	background: #5F9EA0;
	width: 50%;
	text-align:center;	
	padding: 15px;
	border: 1px solid #B0C4DE;
	background: gold;
	border-radius:10px;
}
.wise2{
	margin:auto;
	background: #5F9EA0;
	width: 50%;
	text-align:center;
	
	padding: 15px;
	border: 2px solid #B0C4DE;
	background: white;
	border-radius:10px;
	font-size:30px
}

.walking{
	font-size: 40px;
}

.btn2{
	color: white;
		background: green;
		border-radius: 5px;
		text-decoration:none;
		padding: 10px;
		font-size: 30px;
}

.wise3{
	margin: auto;
	width:50%;
	background-color: green;
	text-align: center;
	font-size:30px;
	font-weight: bold;
	color:yellow;
}
h1{background-color:green;
	color:yellow;
}
b{
	background-color:gold;	
}
.wise9{
	background-color:limegreen;
}

	</style>
</head>
<body> 
<div class="wise9">
<form method="get" action="login.php" class="walking">
		<button type="submit" class="btn2" name="logout" style="font: size 4px;0px; background-color:green; color:yellow; float:right;" >Log out</button> </form>
	<button class="btn52">
		<a href="index.php" style="color: yellow; text-decoration: none; background-color:green	">Take the quiz again</a>
	</button> 

	</div>
	<br>
	<div class="koka">
		<h1>Past Quizes that you have taken <?php echo $_SESSION['username']; ?> are below</h1>
	</div>
	
	<?php
		if (isset($_SESSION['username'])) : 
	?> <br>


	<?php endif ?>

	<?php

	$link = mysqli_connect("localhost", "root", "", "mrquiz");

	if($link === false){
			die("ERROR: Could not connect. " . mysqli_connect_error());
	}

	echo "<table border='2'>";
	if(isset($_POST['pastq'])){
		$ku = $_SESSION['username'];
 
		$sql = "SELECT * from results where 	name='$ku'";
		if($answer = mysqli_query($link,$sql)){
			if(mysqli_num_rows($answer) > 0){
				echo "<table border=2;>";
				echo "<tr>
				<th>Username</th>
				<th>Answer Nr.1</th>
				<th>Answer Nr.2</th>
				<th>Answer Nr.3</th>
				<th>Answer Nr.4</th>
				<th>Answer Nr.5</th>
				<th>Answer Nr.6</th>
				<th>Answer Nr.7</th>
				<th>Answer Nr.8</th>
				<th>Answer Nr.9</th>
				<th>Answer Nr.10</th>
				<th>Answer Nr.11</th>
				<th>Answer Nr.12</th>
				<th>Result</th>
				</tr>";
			while($r = mysqli_fetch_array($answer)){
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
				echo "</tr>";
				echo "<div class='wise3'> Your Score on the previous Quiz: $r[res]/12 </div> <br>";

				echo "<div class='wise'> <b>Question nr.1<br> </b> Who sings the song Shape of You?<br>";
				echo " Your answered it as: $r[first]<br> "; 
				echo " Correct answer is: <b> Ed Sheeran</b></div> <br>";
				
				echo "<div class='wise'> <b> Question nr.2<br> </b> Which is the most hated video in YouTube?<br>";
				echo " Your answered it as: $r[second]<br> "; 
				echo " Correct answer is: <b> Baby</b></div> <br>";
				
				echo "<div class='wise'> <b>Question nr.3<br> </b> The song Neonlight is released when?<br>";
				echo " Your answered it as: $r[third]<br> "; 
				echo " Correct answer is: <b> 2014</b></div> <br>";
				
				echo "<div class='wise'> <b>Question nr.4<br> </b> Who sing the song Let me love You?<br>";
				echo " Your answered it as: $r[fourth]<br> "; 
				echo " Correct answer is: <b> Justin Bieber</b></div> <br>";

				echo "<div class='wise'> <b>Question nr.5<br> </b> Facebook was created by ___________<br>";
				echo " Your answered it as: $r[fifth]<br> "; 
				echo " Correct answer is: <b> Mark Zuckerberg</b></div> <br>";
				
				echo "<div class='wise'> <b>Question nr.6<br> </b> Martin garrix in ________ came in Kosovo for a concert in sunny Hill<br>";
				echo " Your answered it as: $r[sixth]<br> "; 
				echo " Correct answer is: <b> 2018</b></div> <br>";
				
				echo "<div class='wise'> <b>Question nr.7<br> </b> __________ was the year when Facebook was created<br>";
				echo " Your answered it as: $r[seventh]<br> "; 
				echo " Correct answer is: <b> 2004</b></div> <br>";

				echo "<div class='wise'> <b>Question nr.8<br> </b> Which Year the song Shape of you by Ed Sheeran was published ________<br>";
				echo " Your answered it as: $r[eighth]<br> "; 
				echo " Correct answer is: <b> 2017</b></div> <br>";

				echo "<div class='wise'> <b>Question nr.9<br> </b> Who sings the song All of me?<br>";
				echo " Your answered it as: $r[nineth]<br> "; 
				echo " Correct answer is: <b> Jon Legend</b></div> <br>";
				

				echo "<div class='wise'> <b>Question nr.10<br> </b> Which one of the below is not a DJ?<br>";
				echo " Your answered it as: $r[tenth]<br> "; 
				echo " Correct answer is: <b> 2017</b></div> <br>";
				
				echo "<div class='wise'> <b>Question nr.11<br> </b> Gang Gang is a song singed by Kosovar Artist?<br>";
				echo " Your answered it as: $r[eleventh]<br> "; 
				echo " Correct answer is: <b> Fero</b></div> <br>";

				echo "<div class='wise'> <b>Question nr.12<br> </b> Which of these Artist have started theprogram of Sunny Hill FEstival?<br>";
				echo " Your answered it as: $r[twelveth]<br> "; 
				echo " Correct answer is: <b> Dua Lipa</b></div> <br>";

			
			}
			echo "</table>";
			
	} else{
		echo "You Probably haven't done any quiz yet that's why there is no previous quiz for you";
	}
	} else{
	echo "Error: Something went wrong $sql. " . mysqli_error($link);
	}

	mysqli_close($link);

		}

?>


</body>
</html>
<?php 
if (isset($_GET['logout'])) {
	header("location: login.php");
	session_destroy();
	
	unset($_SESSION['username']);
	
}