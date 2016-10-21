<?php include_once $_SERVER['DOCUMENT_ROOT']."/template/header.php" ?>

<div class="page-header">
  <h1>Activities</h1>
</div>
<p>Activities listed below. User can also click the following buttons to see a certain type of events.</p>
<p>
  <button type="button" class="btn btn-sm btn-default">Party</button>
  <button type="button" class="btn btn-sm btn-primary">Study Group</button>
  <button type="button" class="btn btn-sm btn-success">Sports</button>
  <button type="button" class="btn btn-sm btn-info">Board Game</button>
  <button type="button" class="btn btn-sm btn-warning">Movie</button>
  <button type="button" class="btn btn-sm btn-danger">E-sport</button>
</p>

<div class="col-md-12">
    <table class="table table-striped">
      <thead>
        <tr>
          <th>#</th>
          <th>Activity</th>
          <th>Place</th>
          <th>Time</th>
          <th>Empty space</th>
          <th>Tab</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>Mecator Movie Night</td>
          <td>Mecator MMR</td>
          <td>Friday night 10:00</td>
          <td>20</td>
          <td>Movie</td>
        </tr>
        <tr>
          <td>2</td>
          <td>Tennis</td>
          <td>Tennis Court</td>
          <td>Saturday morning</td>
          <td>2</td>
          <td>Sports</td>
        </tr>
        <tr>
          <td>3</td>
          <td>No thanks</td>
          <td>Nord B319</td>
          <td>Friday night 11:00</td>
          <td>5-7</td>
          <td>Board Game</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

 <?php include_once $_SERVER['DOCUMENT_ROOT']."/template/footer.php" ?>