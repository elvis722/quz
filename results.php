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
	*{
		background-color:orangered	 ;
	}
	.what{
		margin:auto;
		
		color:white;
		border: 2px solid blue;
		font-size: 20px;
		width: 50%;
		text-align:center;
		
		background-color:lime;
		border-radius:14px;
		margin-top: -20px;
	}

	.what1{
		margin:auto;

		color:black;
		border: 2px solid blue;
		font-size: 20px;
		width: 50%;
		text-align:center;	
		background-color:yellow;
		border-radius:14px;
		margin-top: -20px;
	}

	.btn11{
	
		font-size:30px;
		background-color:green;
		border: 2px solid lime
	}

	a{
		text-decoration:none;
		color: white;
		background-color:green;
	}
	.btn2{
		float:right;
		color:white;
		font-size:50px;
		background-color:green;
		border: 2px solid lime
	}
	.welcome{
		font-size:40px;
		text-align:center;	
		background-color:orangered;
		color:yellow;
	}
	p {background-color:lime;
		margin-bottom: 30px;
		
	}

	.what1 p{
		color:black;
		background-color:yellow
	}
	.what p{
		color:black;
		background-color:lime;
		font-weight: bold;
	}

	.header {
		color: lime;
		background-color:orangered;
		text-align:center
	}

	.what p{
	}
</style>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<?php  
		if (isset($_SESSION['username'])) : 
	?>

	<div class="content">	
		<form method="get" action="login.php" class="btn222">
			<button type="submit" class="btn2" name="logout" >Log out</button>
		</form>

		<button type="button" class="btn11"><a href="index.php">Why not try again<br> the Quiz</a> </button>
		

		<p class="welcome">Well done you've finished the quiz
		<?php echo $_SESSION['username'];
			?>
		</p>

	</div>

	<?php endif ?>
	<div class="header">
		<h2>Quiz Results</h2>
	</div> <br>
	<?php
		$link=mysqli_connect("localhost","root","","mrquiz");
		if($link === false) {
			die("ERRORR: Could not connect");
		}
		if(isset($_POST['previousquiz'])){
			echo "Here you can see the previos quiz haha";
		}
		$link = mysqli_connect("localhost", "root", "", "mrquiz");

		if($link === false){
				die("ERROR: Could not connect. " . mysqli_connect_error());
		}
		if(isset($_POST['subq'])){
		$queryi = $_SESSION['username'];
			$resulti = mysqli_query($link,$queryi);

		$one=$_POST["one"];
		$two=$_POST["two"];
		$three=$_POST["three"];
		$four=$_POST["four"];
		$five=$_POST["five"];
		$six=$_POST["six"];
		$seven=$_POST["seven"];
		$eight=$_POST["eight"];
		$nine=$_POST["nine"];
		$ten=$_POST["ten"];
		$eleven=$_POST["eleven"];
		$twelve=$_POST["twelve"];

		$right= 0;

		echo "<div class='content'>";
			if ($_POST['one']=="Ed Sheeran"){
				echo "<div class='what'><p >First Question: Who sings the song Shape of you ?</p> 
				<p style='color:blue; font-weight:bold; background-color:lime;'>Correct, it is Ed Sheeran.</p>
				<br><br></div><br><br>";
				$right ++;
			}
			else {
				echo "<div class='what1'><p>First Question: Who sings the song Shape of you</p> 
				<p style='color:red;'>Your answer was $one is wrong, it is Ed Sheeran.</p>
				<br><br></div> <br><br>";
			}
			if ($_POST['two']=="Baby"){
				echo "<div class='what'><p>Second Question: Which is the most hates video on YouTube?</p>
				<b><p style='color:blue;'>Yes Baby is the most hated video and song in YouTube</p><b>
				<br><br></div><br><br>";
				$right ++;
			}
			else {
				echo "<div class='what1'><p>Second Question: Which is the most hated video on YouTube?</p> 
				<p style='color:red;'>Your answer was $two is wrong, the right answe is Baby.</p>
				<br><br></div><br><br>";
			}
			if ($_POST['three']=="2014"){
				echo "<div class='what'><p>Third question: when the song Neon Light was publised?</p> 
				<p style='color:blue;'>Correct, This song was published in 2014 by Blake Shelton.</p><br><br></div><br><br>";
				$right ++;
			}
			else {
				echo "<div class='what1'><p style='background-color:yellow'>Third Question: The song Neo lights was published</p> 
				<p style='color:red; background-color:yellow'>Your answer was $three is wrong, This song was published in 2014.</p>
				<br><br></div><br><br>";
			}
			if ($_POST['four']=="Justin Bieber"){
				echo "<div class='what'><p>Fourth Question: Who sings the song Let me Love You? </p> 
				<p style='color:blue;'>Yes you are right Justin Bieber sings this song.</p><br><br></div><br><br>";
				$right ++;
			}
			else {
				echo "<div class='what1'><p>Fourth Question: Who sings the song Let me love You? </p> 
				<p style='color:red;'>Your answer $four is wrong, the right answer Justin Bieber.</p>
				<br><br></div><br><br>";
			}
			if ($_POST['five']=="Mark Zuckerberg"){
				echo "<div class='what'><p>Fifth Question: Facebook Was created by? </p> 
				<p style='color:blue;'>Bravo U did really well .</p>
				<br><br></div><br><br>";
				$right ++;
								}
			else {
				echo "<div class='what1'><p style='background-color: yellow;'>Fifth Question: Facebook was created by</p> 
				<p style='color:red; background-color:yellow;'>Your answer is $five, sorry but this is 
				inncorect the right answer is Mark Zuckerberg, 
				</p><br><br></div><br><br>";
			}

			if ($_POST['six']=="2018"){
				echo "<div class='what'><p>Sixth Question: Martin Garrinx came in  ___________________ to Kosovo at Sunny hill festival. </p> 
				<p style='color:blue;'>Your answer is correct, Martin Garrinx came in Kosvo in 2018.</p>
				<br><br></div><br><br>";
				$right ++;
			}
			else {
				echo "<div class='what1'><p>Sixth Question: Martin Garrinx came in  ____________________ to Kosovo at Sunny hill festival? </p> 
				<p style='color:red;'>$six is incorect because Martin Garrix 
				came in 2018 in sunny hill festival which was in Kosovo, 
				</p><br><br></div><br><br>";
			}


			if ($_POST['seven']=="2004"){
				echo "<div class='what'><p>Seventh Question: __________________________ Was the year when facebook created </p> 
				<p style='color:blue;'>You are right, in 2004 Facebook was created.</p>
				<br><br></div><br><br>";
				$right ++;
			}
			else {
				echo "<div class='what1'><p>Seventh Question: _______________________ Was the year when facebook created </p> 
				<p style='color:red;'>$seven is incorrect, facebook was created in 2004
				.</p><br><br></div><br><br>";
			}


			if ($_POST['eight']=="2017"){
				echo "<div class='what'><p>Eighth Question: Which Year Shape of You by Ed Sheeran was published _________________________ </p> 
				<p style='color:blue;'> 2017 is the correct answer 
				Hero.</p><br><br></div><br><br>";
				$right ++;
			}
			else {
				echo "<div class='what1'><p>Eight Question:Which Year Shape of You by Ed Sheeran was published ________________________</p>
				<p style='color:red;'> $eight Is not the correct answer. The Right answe is 2017.</p><br><br></div><br><br>";
			}

			if ($_POST['nine']=="Jon Legend"){
				echo "<div class='what'><p>Nineth Question:Who sings the Song All of me? </p> 
				<p style='color:blue;'>Jon Legend is the right answer  
				Kosovo.</p><br><br></div><br><br>";
				$right ++;
			}
			else {
				echo "<div class='what1'><p>Question 9:Who is the highest mountain from the above ? </p> 
				<p style='color:red;'>Jon Legend is the right answer
				 	</p><br><br></div><br><br>";
			}
			if ($_POST['ten']=="Michael Jackson"){
				echo "<div class='what'><p>Tenth Question: Which one of the below is not a DJ? </p> <p style='color:blue;'>
				Michael Jackson is not a DJ</p><br><br></div><br><br>";
				$right ++;
			}
			else {
				echo "<div class='what1'><p>Tenth Question: Which one of the below is not a DJ? </p> <p style='color:red;'>
				Michael Jackson is the right answer
				</p><br><br></div><br><br>";
			}
			if ($_POST['eleven']=="Fero"){
				echo "<div class='what'><p>Eleventh Question: Gang Gang is a song sing by Kosovar Artist?</p> <p style='color:blue;'>
				Your answer is correct, Gang Gang is singed by Fero.</p><br><br></div><br><br>";
				$right ++;
			}
			else {
				echo "<div class='what1'><p>Eleventh Question:What is the Prishtina population?</p> <p style='color:red;'>
				Your answer was $eleven which is incorrect, Fero sings the song Gang Gang.
				</p><br><br></div> <br><br>"; 
			}
			if ($_POST['twelve']=="Dua Lipa"){
				echo "<div class='what'><p>Question eleven: Which of these Artist have started the program of 
				Suny Hill Festival?</p> <p style='color:blue;'>
				Great Job You choose right Dua Lipa is the right answe.</p><br><br></div><br><br>";
				$right ++;
			}
			else {
				echo "<div class='what1'><p>Question 12: Which of these Artist have started the program of Suny Hill Festival?</p> 
				<p style='color:red;'> $twelve Is incorrect. The right answe is Dua Lipa.</p><br><br></div><br><br>";
			}
			echo "<p style='background-color:orangered; '><b style='color:lime; font-size:30px'>Your score is $right/12</b></p> ";
			echo "</div>";

		$sql = "INSERT INTO results (
			name, 
			first,
			second,
			third,
			fourth, 
			fifth, 
			sixth, 
			seventh, 
			eighth, 
			nineth, 
			tenth, 
			eleventh, 
			twelveth, 
			res
		)

		VALUES (
			'$queryi',
			'$one',
			'$two',
			'$three',
			'$four',
			'$five',
			'$six',
			'$seven',
			'$eight',
			'$nine',
			'$ten',
			'$eleven',
			'$twelve',
			'$right'
		)
		ON DUPLICATE KEY UPDATE
		first='$one', 
		second='$two', 
		third='$three', 
		fourth='$four', 
		fifth='$five', 
		sixth='$six', 
		seventh='$seven', 
		eighth='$eight', 
		nineth='$nine', 
		tenth='$ten', 
		eleventh='$eleven', 
		twelveth='$twelve', 
		res= '$right'";
		if(mysqli_query($link, $sql)){
				echo "<p style='color:lime; background-color:orangered'>Everything went well.<p>";

		} else{
				echo "ERROR: Cannot execute $sql. " . mysqli_error($link);
		}
		}

	 ?>

</body>
</html>
<?php
	if (isset($_GET['logout'])) {
		session_destroy();
		unset($_SESSION['username']);
		header("location: login.php");
	}