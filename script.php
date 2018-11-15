<?php
	$number = $_GET['number'];
	$name = $_GET['name'];
	$age = $_GET['age'];
$output = shell_exec('/var/www/html/./random.sh '.$number.' '.$name.' '.$age);
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>The Witcher randomizador</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
  </head>
<style>
#myHeader {
    font-size:20px;
} 
</style>
  <body>

<div align='center'><h1><img src='logo2.png' height='100' width='115'>Lifepath<img src='logo2.png' height='100' width='115'></h1></div>
<?php echo $output; ?>
<br><br>
<button onclick="window.location.href='../'">Regenerar</button> 
<button onclick="javascript:window.print()">Imprimir</button>



  </body>
</html>




