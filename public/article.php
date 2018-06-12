<?php
include '../bootstrap.php';


if (isset($_GET['id']) ) {

	$id = $_GET['id'];
	$_SESSION['artId'] = $id;
	
} else { 
	$id=$_SESSION['artId'];
}

include '../views/article.phtml.php';