<!DOCTYPE html>
<html>
<head>
	<title>Receiving Page</title>
</head>
<body>
	<h1>Test</h1>

	<?php		
		if ( !empty($_POST) ) {
			//$custFirst = $_POST['custFirst'];
			$custFirst = isset($_POST['custFirst']) ? $custFirst = $_POST['custFirst'] : $custFirst = '';
			$custLast = isset($_POST['custLast']) ? $custLast = $_POST['custLast'] : $custLast = '';
			$custPlanet = isset($_POST['custPlanet']) ? $custPlanet = $_POST['custPlanet'] : $custPlanet = '';
			
			echo '<h2>Posted Elements</h2>';			
			echo 'custFirst: ' . $custFirst . '</br>';
			echo 'custLast: ' . $custLast . '</br>';
			echo 'custPlanet: ' . $custPlanet . '</br>';
		} else {			
			echo '<p>Error getting data.</p>';
		}
	?>
</body>
</html>