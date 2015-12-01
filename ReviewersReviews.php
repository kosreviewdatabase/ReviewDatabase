<html>

<?php

mysql_connect('localhost', 'root', '348', '');

mysql_select_db('review_database');

$sql="SELECT * FROM reviewers";

$list=mysql_query($sql);

?>
<head>
<title>Reviews with Reviewers</title>
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

<th>IGN</th>

<th>GiantBomb</th>

<th>GameSpot</th>

<th>Polygon</th>

<tr>

<?php
	while($scores=mysql_fetch_assoc($list))
	{
	echo"<tr>";
	echo"<td>".$scores['Title']."</td>";
	
	echo"<td>".$scores['IGN']."</td>";
	
	echo"<td>".$scores['GiantBomb']."</td>";
	
	echo"<td>".$scores['GameSpot']."</td>";
	
	echo"<td>".$scores['Polygon']."</td>";
	
	echo"</tr>";
	

	}
?>
</table>
</body>
</html>