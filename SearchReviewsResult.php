<html>

<?php
  //connect  to the database
  $db=mysql_connect('localhost', 'root', '348', '') or die ('I cannot connect to the database  because: ' . mysql_error());
  
  //-select  the database to use
  $mydb=mysql_select_db("review_database");
  
	if(isset($_GET["reviewer_IGN"]))
	{
		$name=$_GET["reviewer_IGN"];
		}
	elseif(isset($_GET["reviewer_GB"]))
	{
		$name=$_GET["reviewer_GB"];
		}
	elseif(isset($_GET["reviewer_GS"]))
	{
		$name=$_GET["reviewer_GS"];
		}
	elseif(isset($_GET["reviewer_P"]))
	{
		$name=$_GET["reviewer_P"];
		}
		
	$a = mysql_query("SELECT outlet FROM journalists WHERE Name = '" .$name. "'");
	$outlet = mysql_result($a, 0);
	
	if($outlet=="GiantBomb")
	$out = "(Out of 5)";
	else
	$out = "(Out of 10)";

//echo"<p>".$outlet.$out."</p>"; scores.Title, scores.'".$outlet.$out."'

	//-query  the database table
  $sql="SELECT scores.*
	FROM scores, reviewers 
	WHERE scores.Title = reviewers.Title AND reviewers.`".$outlet."`= '" .$name."'";
  
  //-run  the query against the mysql query function
  $result=mysql_query($sql);

?>

<head>
<title>Journalist Results</title>
</head>

<body>
<p><a href="http://localhost/gamelist.php">2015 Games List</a></p>
<p><a href="http://localhost/SearchGames.php">Search By Games</a></p>
<p><a href="http://localhost/ReviewersWScores.php">Recent Reviews(w/Scores and Reviewers)</a></p>
<p><a href="http://localhost/ReviewersReviews.php">Recent Reviews(w/Reviewers)</a></p>
<p><a href="http://localhost/ReviewScores.php">Recent Reviews(w/Scores)</a></p>
<p><a href="http://localhost/SearchReviews.php">Select Journalists Scoring</a></p>

<table width="500" border="1" cellpadding="1" cellspacing="1">
<tr>
<th>Title</th>
<?php if($outlet=="IGN"): ?>
<th>IGN(Out of 10)</th>
<?php elseif($outlet=="GiantBomb"): ?>
<th>GiantBomb(Out of 5)</th>
<?php elseif($outlet=="GameSpot"): ?>
<th>GameSpot(Out of 10)</th>
<?php elseif($outlet=="Polygon"): ?>
<th>Polygon(Out of 10)</th>
<?php endif; ?>
<tr>

<?php
	  echo"<p>".$name." Reviewed games for ".$outlet.":"."</p>";
  //-create  while loop and loop through result set
  while($scores=mysql_fetch_array($result)){
	echo"<tr>";
	
	echo"<td>".$scores['Title']."</td>";
	if($outlet=="IGN")
	echo"<td>".$scores['IGN(Out of 10)']."</td>";
	elseif($outlet=="GiantBomb")
	echo"<td>".$scores['GiantBomb(Out of 5)']."</td>";
	elseif($outlet=="GameSpot")
	echo"<td>".$scores['GameSpot(Out of 10)']."</td>";
	elseif($outlet=="Polygon")
	echo"<td>".$scores['Polygon(Out of 10)']."</td>";

	
	echo"</tr>";
  }
?>
</table>
</body>
</html>