<?php
foreach ($movies as $movie) {
	$lk = 'live/show/'.$movie->id;
	$xx = '<img src="' . $movie->thumb . '"alt="' . $movie->name . 'width="100" height="100" />';
	echo $xx . '    ';
	echo  anchor( $lk,$movie->name,$movie->desc) ;
	echo '</br></br>';
}
?>