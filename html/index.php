<?php include_once $_SERVER['DOCUMENT_ROOT']."/template/header.php" ?>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "eventor";
$output = '';

mysql_connect($servername, $username, $password) or die("Could not connet");
mysql_select_db($dbname) or die("Could not find db");

if(isset($_POST['search'])){
  $searchq = $_POST['search'];
  $searchq = preg_replace("#^0-9a-z#i", "", $searchq);

  $query = mysql_query(SELECT * FROM  students WHERE user LIKE "%$searchq%" OR major LIKE "%$searchq%") or die("Could not search");
  $count = mysql_num_rows($query);
  if($count == 0){
    $output = "There's no search result";
  }
  else {
    while($row = mysql_fetch_array($query)){
      $name = user;

      $outpu .= '<div> '.$name' </div>';
    }
  }
}


?>

<div class="jumbotron">
  <h1>Eventor</h1>
  <p>The homepage would shown your profile, most recent activities, our recommendation for you, and so on.</p>
</div>

<form action = "index.php" method="post">
  <input type = "test" name = "search" placeholder="Search for students">
  <input type="submit" name="search students">
</form>

<?php print($output) ?>

<!-- <form action = "index.php" method="post">
  <input type = "test" name = "search" placeholder="Search for faculties">
  <input type="submit" name="search faculties">
</form>
 -->
<div class="page-header">
  <h1>Most recent activities and Our recommendation</h1>
</div>
<div class="row">
  <div class="col-sm-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Event's name</h3>
      </div>
      <div class="panel-body">
        Primary discription
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Event's name</h3>
      </div>
      <div class="panel-body">
        Primary discription
      </div>
    </div>
  </div><!-- /.col-sm-4 -->
  <div class="col-sm-6">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Event's name</h3>
      </div>
      <div class="panel-body">
        Primary discription
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title">Event's name</h3>
      </div>
      <div class="panel-body">
        Primary discription
      </div>
    </div>
</div>

<?php include_once $_SERVER['DOCUMENT_ROOT']."/template/footer.php" ?>
