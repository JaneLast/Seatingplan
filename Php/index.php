<!DOCTYPE html>
<html lang="en">
<head>
	<title>Seating Plan</title>
	<link href="stylesheet.css" rel="stylesheet" type="text/css" />
	<link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
</head>

<body>
	<?php
	print '<div class="container">';
	if (isset($_REQUEST["submitted"])) {
	
	$seats = array("Jane", "Aaron", "Dave", "Trish", "Abi", "Sonny", "Romeo");
	shuffle($seats);
	
	for($i= 0 ; $i <= 6 ; $i++) {
	    $real_val = $i + 1;
		// Add containers, if 1-3 put in left, 4 bottom 5-7 right
	    print '<div class="seat_'. $real_val .'">'. $seats[$i] .'</div>';
	}
	
	print '<br /><a class="btn" href="?submitted">Randomize!</a></div>';
	
	} else {
	    print '<div class="container"><a class="btn" href="?submitted">Randomize!</a></div>';
	}
	?>
</body>
</html>