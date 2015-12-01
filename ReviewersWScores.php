<html>

<?php

mysql_connect('localhost', 'root', '348', '');

mysql_select_db('review_database');

$sql="SELECT
  scores.Title,
  reviewers.IGN,
  scores.`IGN(Out of 10)`,
  reviewers.GiantBomb,
  scores.`GiantBomb(Out of 5)`,
  reviewers.GameSpot,
  scores.`GameSpot(Out of 10)`,
  reviewers.Polygon,
  scores.`Polygon(Out of 10)`
FROM
  games,
  reviewers,
  scores
WHERE
  games.Title = scores.Title AND games.Title = reviewers.Title";

$list=mysql_query($sql);

?>
<head>
<title>Reviewers With Scores</title>
</head>

<body>
<p><a href="http://localhost/gamelist.php">2015 Games List</a></p>
<p><a href="http://localhost/SearchGames.php">Search By Games</a></p>
<p><a href="http://localhost/ReviewersWScores.php">Recent Reviews(w/Scores and Reviewers)</a></p>
<p><a href="http://localhost/ReviewersReviews.php">Recent Reviews(w/Reviewers)</a></p>
<p><a href="http://localhost/ReviewScores.php">Recent Reviews(w/Scores)</a></p>
<p><a href="http://localhost/SearchReviews.php">Select Journalists Scoring</a></p>
<table width="1100" border="1" cellpadding="1" cellspacing="1">
<tr>

<th>Title</th>

<th>IGN</th>
<th>Out of 10</th>

<th>GiantBomb</th>
<th>Out of 5</th>

<th>GameSpot</th>
<th>Out of 10</th>

<th>Polygon</th>
<th>Out of 10</th>

<tr>

<?php
	while($scores=mysql_fetch_assoc($list))
	{
	echo"<tr>";
	echo"<td>".$scores['Title']."</td>";
	
	echo"<td>".$scores['IGN']."</td>";
	echo"<td>".$scores['IGN(Out of 10)']."</td>";
	
	echo"<td>".$scores['GiantBomb']."</td>";
	echo"<td>".$scores['GiantBomb(Out of 5)']."</td>";
	
	echo"<td>".$scores['GameSpot']."</td>";
	echo"<td>".$scores['GameSpot(Out of 10)']."</td>";
	
	echo"<td>".$scores['Polygon']."</td>";
	echo"<td>".$scores['Polygon(Out of 10)']."</td>";
	
	echo"</tr>";
	

	}
?>
</table>
</body>
</html>