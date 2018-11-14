<?php
	$number = $_GET['number'];
	$output = shell_exec('/var/www/html/./random.sh 1');
	echo "<pre>$output</pre>";
?>
