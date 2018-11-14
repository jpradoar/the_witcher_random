<?php
	$number = $_GET['number'];
	$age = $_GET['age'];
	$name = $_GET['name'];
	$output = shell_exec('/var/www/html/./random.sh '.$number.' '. $age.' '.$name );
	echo "<pre>$output</pre>";
?>
