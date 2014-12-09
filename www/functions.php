<?php

function page(){

	$pieces=explode("/", $_SERVER['REQUEST_URI']);
	$pieces=array_filter($pieces);
	$pieces=array_values($pieces);

	if (count($pieces) > 1){

		throw new Exception("Page does not exist");}

	$page = 1;
	if (isset($pieces[0])){
		$page = intval($pieces[0]);}

	return $page;}


function pic_array(){

	$files = glob('thumbs/*.{jpg,jpeg,png,gif}', GLOB_BRACE);

	foreach ($files as $file){

		$file_date=date("Y-m-d H:i:s.",filemtime($file));

		$pic_array[$file_date] = str_replace('thumbs/','',$file);}

	krsort($pic_array);

	$count = 0;
	$g_count = 0;

	foreach ($pic_array as $key => $value){

		$count++;

		$n_pic_array[$g_count][$key] = $value;

		if ($count == PICS_PER_PAGE){
			$g_count++;
			$count=0;}}

	return $n_pic_array;}


function page_pic_array($page){

	$n_pic_array = pic_array();

	if(isset($n_pic_array[$page-1])){

		return $n_pic_array[$page-1];}
	else{

		throw new Exception("Page does not exist");}}

?>
