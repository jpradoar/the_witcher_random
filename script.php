<?php
	$number = $_GET['number'];
	$name = $_GET['name'];
	$age = $_GET['age'];

$output = shell_exec('/var/www/html/./random.sh '.$number.' '.$name.' '.$age );
?>


<br><br>
<pre><div align='center'><h1><img src='logo2.png' height='100' width='115'>Lifepath<img src='logo2.png' height='100' width='115'></h1></div></pre>
<pre><br><?php echo $output; ?></pre>
<br><br>
<button onclick="window.location.href='../'">Regenerar</button>
