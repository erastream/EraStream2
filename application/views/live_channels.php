<?php
foreach ($channels as $channel) {
	$url = 'live/subcribe/' . $channel->id  ;
	echo  anchor( $url,$channel->name) ;
	echo '</br></br>';
}
?>