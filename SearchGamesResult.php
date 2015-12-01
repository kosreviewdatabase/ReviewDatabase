<html>

<?php
  if(isset($_POST['submit'])){
  if(isset($_GET['go'])){
  if(preg_match("/^[  a-zA-Z]+/", $_POST['name'])){
  $title=$_POST['name'];
  
  
  //connect  to the database
  $db=mysql_connect('localhost', 'root', '348', '') or die ('I cannot connect to the database  because: ' . mysql_error());
  
  //-select  the database to use
  $mydb=mysql_select_db("review_database");
  
  //-query  the database table
  $sql="SELECT * FROM games WHERE Title LIKE '%" .$title. "%' ";
  
  //-run  the query against the mysql query function
  $result=mysql_query($sql);
?>

<head>
<title>Search Results</title>
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
  //-create  while loop and loop through result set
  while($games=mysql_fetch_array($result)){
	echo"<tr>";
	
	echo"<td>".$games['Title']."</td>";
	
	echo"<td>".$games['Platforms']."</td>";
	
	echo"<td>".$games['Genre']."</td>";
	
	echo"<td>".$games['Series']."</td>";
	
	echo"<td>".$games['Release Date']."</td>";
	
	echo"</tr>";
  }
  }
  else{
  echo  "<p>Please enter a search query</p>";
  }
  }
  }
?>
</table>
</body>
</html>