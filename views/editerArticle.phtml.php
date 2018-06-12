<?php include 'header.phtml.php'; ?>

<main>
	<h2><i class="fas fa-pencil-alt"></i>Editer un article</h2>
	<form method="post" action="modifArticle.php">
		<?php $article=getArticleById($id);?>
		<fieldset>
			<legend><i class="far fa-sticky-note"></i> Article</legend>
			<label for="titreArt" class="clearfix">Titre : </label>
			<input type="text" id="titreArt" name="titreArt" value="<?php echo($article["title"]) ?>">
			<label for="contentArt">Article :	</label>
			<textarea type="text"  rows="15"  id="contentArt" name="contentArt"><?php echo($article["content"]);?></textarea>	
			<div id="buttonForm">
				<button type="submit" name="idArt" value="<?php echo($article["id"])?>">Mettre à jour</button>
				<button><a href="editerArticle.php">Annuler</a></button>
			</div>
		</fieldset>
	</form>
</main>
<?php include 'footer.phtml.php';?>