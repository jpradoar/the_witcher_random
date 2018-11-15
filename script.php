<?php
	$number = $_GET['number'];
	$name = $_GET['name'];
	$age = $_GET['age'];

$output = shell_exec('/var/www/html/./random.sh '.$number.' '.$name.' '.$age );
?>


<br><br>



<table border="1" width="100%">
	<tr>
	 <td>
		<pre><div align='center'><h1><img src='logo2.png' height='100' width='115'>Lifepath<img src='logo2.png' height='100' width='115'></h1></div></pre></td>
	 </tr>
	<tr>
		<td>
			<pre><br><?php echo $output; ?></pre>
		</td>
	</tr>

</table>
<br><br>
<button onclick="window.location.href='../'">Regenerar</button>
