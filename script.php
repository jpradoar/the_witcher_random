<?php
	$number = $_GET['number'];
	$name = $_GET['name'];
	$age = $_GET['age'];

$output = shell_exec('/var/www/html/./random.sh '.$number.' '.$name.' '.$age );

echo "<pre>$output</pre>";
?>
<div align="center">
<br><br><br><br>
<button onclick="window.location.href='../'">Regenerar</button>
</div>