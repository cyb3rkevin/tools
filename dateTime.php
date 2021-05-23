<?php
	// isolating the day from the 'getdate' function
	$mydate=getdate( date("U") );
	$day=$mydate[mday];

    // split the interger into an array 
    $array = array_map('intval', str_split($day) );
 
    // isolate last digit
	$lastdigit = $array[ count($array) - 1 ];
    echo '<br> Last digit is => '. $lastdigit;

	// check suffix used based on the last digit
	if ( $lastdigit == 1) {$daysuffix = 'st';}
	elseif ($lastdigit == 2 ) { $daysuffix = 'nd';}
	elseif ( $lastdigit == 3) { $daysuffix = 'rd'; }
	else { $daysuffix = 'th';}

	// IF Statement results
	echo '<br> If Statement test => <b>'. $lastdigit . '<sup>'. $daysuffix . '</sup></b>';

	//////////////////////  FINAL OUTPUT /////////////////////////////

    echo "<br> $mydate[weekday], $mydate[month] $day<sup>$daysuffix</sup>, $mydate[year]";
	
?>


