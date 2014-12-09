<?php

define("PICS_PER_PAGE",5);

require('functions.php');

try {
	$template=file_get_contents('template.tpl');
	eval(' ?>'.$template.'<?php ');}

catch(Exception $e){

	print($e->getMessage());}
?>


