<?php
require_once('mysql_connect.php');

$query = "SELECT id, name FROM cats";

$response = @mysql_query($dbc, $query);

if($response){
	echo '<table align = "left" 
	cellspcing = "5" cellpadding = "8">
	<tr>
	<td align = "left"><b> id </b></td>
	<td align = "left"><b> name </b></td>
	<tr>'

	while($row = mysql_fetch_array($response)){
		echo '<tr><td align = "left">' .
		$row['id'] . '</td><td align = "left">' .
		$row['name'] . '</td><td align = "left">';
		echo '</tr>';
	}

	echo '</table>';
} else {
	echo "Couldn't issue database query";

	echo mysql_close($dbc);
}
?>