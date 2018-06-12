<?php 
function pre($trukmuch) {

	echo '<pre>';	print_r ($trukmuch);echo '</pre>';
}

function wLog($trukmuch){

	if ( is_array($trukmuch) ) {

		$trukmuch = print_r($trukmuch,true);
	}

	file_put_contents('../logs/log.txt', PHP_EOL . date('Y-m-d H:i:s') . " " . $trukmuch, FILE_APPEND);

}

function z($trukmuch){

	return htmlentities($trukmuch);

}