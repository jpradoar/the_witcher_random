<?php
	$number = $_GET['number'];
	$output = shell_exec('/var/www/html/./random.sh '.$number );
	echo "<pre>$output</pre>";
?>
