<?php
include '../bootstrap.php';

$newArticle = [];
$newArticle['title'] = $_POST['titreArt'];
$newArticle['content'] = $_POST['contentArt'];
$newArticle['authorid'] = $_POST['idAuteur'];
$newArticle['idcateg'] = $_POST['idCateg'];
ajoutArticle($newArticle);

header('location:home.php');
exit;
