<?php include_once $_SERVER['DOCUMENT_ROOT']."/template/header.php" ?>

<div class="starter-template">
  <h1>Input Page</h1>
  <form>
    Please select the type of your event:
    <select name="event">
    <option>----</option>
    <option value="party">Party</option>
    <option value="movie">Movie</option>
    <option value="boardgame">Boardgame</option>
    <option value="travel">Travel</option>
    </select>
    <br>
    Please enter event name:
    <input type="text" name="name">
    <br>
    PLease enter the time period: 
    <input type="text" name="e_time">
    <br>
    Please enter the discription:
    <br>
    <textarea name="message" rows="10" cols="30"></textarea>
    <br><br>
    <input type="submit" value="Submit">
    <br><br><br><br>

    Username:<input type="text" name="username">
    <br>
    Password:<input type="text" name="password">
    <br>
    Gender:
    <select name="gender">
      <option>----</option>
      <option value="male">Male</option>
      <option value="female">Female</option>
    </select>
    <br><br>
    <input type="submit" value="Sign up">
    <br><br><br><br>

    Username:<input type="text" name="username">
    <br>
    Eventname:<input type="text" name="eventname">
    <br><br>
    <input type="submit" value="Join">
    <br><br><br><br>

  </form>
</div>

<?php include_once $_SERVER['DOCUMENT_ROOT']."/template/footer.php" ?>
