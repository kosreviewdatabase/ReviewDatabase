<html>

<?php

mysql_connect('localhost', 'root', '348', '');

mysql_select_db('review_database');

$sql="SELECT * FROM games ORDER BY `Release Date` DESC";

$list=mysql_query($sql);

?>
<head>
<title>Games Data</title>
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
<th>Platforms</th>
<th>Genre</th>
<th>Series</th>
<th>Release Date</th>
<tr>

<?php
	while($games=mysql_fetch_assoc($list))
	{
	echo"<tr>";
	
	echo"<td>".$games['Title']."</td>";
	
	echo"<td>".$games['Platforms']."</td>";
	
	echo"<td>".$games['Genre']."</td>";
	
	echo"<td>".$games['Series']."</td>";
	
	echo"<td>".$games['Release Date']."</td>";
	
	echo"</tr>";

	}
?>
</table>
</body>
</html>