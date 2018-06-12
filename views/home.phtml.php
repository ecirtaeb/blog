<?php include'header.phtml.php'; ?>
<main>
	<h2><i class="fas fa-home"></i> Accueil</h2>
	<section id="article">
		<?php foreach($articles as $article) : ?>
			<article id="home">
				<h3><a href="article.php?idArticle=<?=$article['id']?>"><i class="far fa-hand-point-right"></i><?=$article['titre']?></a></h3>
				<p><?=$article['texte']?></p>
				<p>Rédigé par <span class="bold"><?=$article['auteur']?></span>
				  le <?=$article['dmaj'] ? $article['dmaj']: $article['dcre']?></p>
				<div id="comment">					
					<p> [...] <?=  $article['nbComments']>0 ?  $article['nbComments']." commentaire(s)" : "no comment" ;?></p>
				</div>
			</article>
		<?php endforeach;?>
	</section>
</main>
<?php include 'footer.phtml.php';?>