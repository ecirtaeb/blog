<?php
include '../bootstrap.php';

$categories=listeCategories();
$auteurs=listeAuteurs();

include '../views/creerArticle.phtml.php';
