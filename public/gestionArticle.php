<?php
include '../bootstrap.php';

$form=($_POST);
$action = $_POST['action'];
//pre($_GET);
//pre($action);
$newArticle = [];
$newArticle['titre'] = $_POST['titreArt'];
$newArticle['content'] = $_POST['contentArt'];
$artnewArticleid['autor_id'] = $_POST['author_id'];
$artnewArticleid['category_id'] = $_POST['category_id'];

switch ($action) {
	case "modification":
	    $id = $_GET['idArt'];
		modifArticleById($form,$id);
		break;
	case "creation":
		pre("creation");
		pre($_POST);
		pre(ajoutArticle($form));
		break;	
	default:
	  	break;
}

article = [];



$article['content'] = $_POST['content'];

$article['title'] = $_POST['title'];

$article['category_id'] = $_POST['category_id'];

$article['author_id'] = $_POST['author_id'];



saveArticle($article);





header('Location: home.php');

// retour page admin aussi
header('location:admin.php');
exit;
