<?php
include '../bootstrap.php';

$newComment = [];

$newComment['idarticle'] = $_POST['id'];
$newComment['pseudo'] = $_POST['pseudo'];
$newComment['content'] = $_POST['content'];


ajoutComment($newComment);

$id = $_POST['id'];

include '../views/article.phtml.php';