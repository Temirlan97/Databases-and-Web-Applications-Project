<?php include_once $_SERVER['DOCUMENT_ROOT']."/template/header.php" ?>

<div class="starter-template">
  <h1>Input Page</h1>
  <form>
    Please select the type of your event:
    <select name="event">
    <option value="party">Party</option>
    <option value="movie">Movie</option>
    <option value="boardgame">Boardgame</option>
    <option value="travel">Travel</option>
  </select>
  <br>
    Please enter event name:
    <input type="text" name="boardgame"><br><br>
    <input type="submit" value="Submit">
  </form>
</div>

<?php include_once $_SERVER['DOCUMENT_ROOT']."/template/footer.php" ?>
