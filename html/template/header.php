<?php ini_set("display_errors", 1); ?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Eventor</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/starter-template.css" rel="stylesheet">
  </head>

  <body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/index.php">Eventor</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <?php $filename = basename($_SERVER['PHP_SELF']); ?>
            <li <?php if($filename == "index.php"){echo "class=\"active\"";} ?>><a href="/index.php">Home</a></li>
            <li <?php if($filename == "my_profile.php"){echo "class=\"active\"";} ?>><a href="/src/my_profile.php">My profile</a></li>
            <li <?php if($filename == "activities.php"){echo "class=\"active\"";} ?>><a href="/src/activities.php">Activities</a></li>
            <li <?php if($filename == "imprint.php"){echo "class=\"active\"";} ?>><a href="/src/imprint.php">Imprint</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

