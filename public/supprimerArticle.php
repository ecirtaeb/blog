<?php
include '../bootstrap.php';

$id = $_GET['id'];
supprimeArticleById($id);

//$return=

header('location:admin.php');
exit;
