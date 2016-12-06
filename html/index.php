<?php include_once $_SERVER['DOCUMENT_ROOT']."/template/header.php" ?>

<?php
define('DB_USER', 'test');
define('DB_PASSWORD', 'password');
define('DB_HOST', 'localhost');
define('DE_NAME', 'eventor');

$dbc = @mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DE_NAME);

if($dbc){
  echo "worked!";
}

if($dbc == false){
  echo "not working";
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
