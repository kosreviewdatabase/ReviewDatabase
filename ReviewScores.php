<html>

<?php

mysql_connect('localhost', 'root', '348', '');

mysql_select_db('review_database');

$sql="SELECT * FROM scores";

$list=mysql_query($sql);

?>
<head>
<title>Reviews with Scores</title>
</head>

<body>
<p><a href="http://localhost/gamelist.php">2015 Games List</a></p>
<p><a href="http://localhost/SearchGames.php">Search By Games</a></p>
<p><a href="http://localhost/ReviewersWScores.php">Recent Reviews(w/Scores and Reviewers)</a></p>
<p><a href="http://localhost/ReviewersReviews.php">Recent Reviews(w/Reviewers)</a></p>
<p><a href="http://localhost/ReviewScores.php">Recent Reviews(w/Scores)</a></p>
<p><a href="http://localhost/SearchReviews.php">Select Journalists Scoring</a></p>
<table width="1000" border="1" cellpadding="1" cellspacing="1">
<tr>

<th>Title</th>

<th>IGN(Out of 10)</th>

<th>GiantBomb(Out of 5)</th>

<th>GameSpot(Out of 10)</th>

<th>Polygon(Out of 10)</th>

<tr>

<?php
	while($scores=mysql_fetch_assoc($list))
	{
	echo"<tr>";
	echo"<td>".$scores['Title']."</td>";
	
	echo"<td>".$scores['IGN(Out of 10)']."</td>";
	
	echo"<td>".$scores['GiantBomb(Out of 5)']."</td>";
	
	echo"<td>".$scores['GameSpot(Out of 10)']."</td>";
	
	echo"<td>".$scores['Polygon(Out of 10)']."</td>";
	
	echo"</tr>";
	
	}
?>
</table>
</body>
</html>