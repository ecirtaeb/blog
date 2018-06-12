<?php include'header.phtml.php'; ?>
<main>
	<h2><i class="fas fa-cogs"></i> Panneau d'administration</h2>
	<section>
		<h3><a href="creerArticle.php"><i class="fas fa-pencil-alt"></i>Rédiger un nouvel article</a></h3>
		<table id="articles" border="0">		
			<caption>Liste des articles</caption>
			<thead>			
				<th>Titre</th>
				<th>Article</th>
				<th>Auteur</th>
				<th>Catégorie</th>
				<th>Création </th>
				<th>Mise à jour</th>
				<th colspan="2"></th>
			</thead>
			<tbody>
				<?php foreach ($articles as $article) : ?>
					<tr>
						<td><?=$article['titre']?></td>
						<td><?=$article['texte']?></td>
						<td><?=$article['auteur']?></td>
						<td><?=$article['categ']?></td>
						<td><?=$article['dcre']?></td>
						<td><?=$article['dmaj'] ? $article['dmaj']: "aucune"?></td>
						<td><a href="editerArticle.php?id=<?=$article['id']?>"><i class="fas fa-pencil-alt"></i></a></td>
						<td><a href="supprimerArticle.php?id=<?=$article['id']?>"><i class="fas fa-times"></i></a></td>
					</tr>			
				<?php endforeach; ?>
			</tbody>
			
		</table>
	</section>

</main>
<?php include'footer.phtml.php';?>