<?php include 'header.phtml.php'; ?>

<main>
	<h2><i class="far fa-sticky-note"></i> Article</h2>
	<?php
			$article=getArticleById($id);
			$comments = listeCommentaires($id);
	?>
	<article id="article">
		<h4><?=$article['title']?></h4>
		<p><?=$article['content']?></p>
		<p>Rédigé par <span class="bold"><?=z($article['auteur'])?></span>
		  le <?=$article['dmaj'] ? $article['dmaj']: $article['dcre']?></p>
	</article>
	<section id="comment">
		<?php foreach($comments as $comment) : ?>
			<article id="comment">
				<h4><i class="fas fa-comment"></i> Rédigé par <span class="bold"><?=z($comment['pseudo'])?></span></h4>				
				<p><?= z($comment['content'])?></p>
			</article>
		<?php endforeach;?>

		<form method="post" action="ajoutCommentaire.php">
<!--		<form method="post" action="ajoutCommentaire.php?idArt=<?php echo($article["id"])?>">  -->
			<fieldset>
				<legend><i class="far fa-comment"></i> Nouveau commentaire</legend>
				<label for="pseudo">Pseudo: </label>
				<input type="text" id="pseudo" name="pseudo" placeholder="Pseudo" value="">
				<span></span>
				<label for="content">Commentaire : 
					<textarea cols="60" rows="15" id="comment" name="content" placeholder="vas-y cause !"></textarea>
				</label>
				<div id="buttonForm">
					<button type="submit" name="id" value="<?php echo($article["id"])?>">Ajouter</button>
					<button><a href="article.php">Annuler</a></button>
				</div>
			</fieldset>
		</form>
	</section>
</main>
<script type="text/javascript" src="../js/ctrlComment.js"></script>
<?php include 'footer.phtml.php'; ?>
