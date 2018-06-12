<?php include 'header.phtml.php'; ?>

<main>
	<h2><i class="fas fa-pencil-alt"></i>Ecrire un nouvel un article</h2>
	<form method="post" action="ajoutArticle.php">
		<fieldset>
			<legend><i class="far fa-sticky-note"></i> Article</legend>
			<label for="titreArt">Titre : </label>
				<input type="text" id="titreArt" name="titreArt" placeholder="Titre article">
			<label for="contentArt">Article : </label>
				<textarea cols="60" rows="15" id="contentArt" name="contentArt" placeholder="blabla"></textarea>
			<label for="auteur">Auteur : </label>
				<select id="auteur" name="idAuteur">
				<?php foreach($auteurs as $auteur) : ?>
						<option value="<?=$auteur['id']?>"><?=$auteur['auteur'];?></option>
				<?php endforeach; ?>
				</select>
			<label for="categ">Catégorie</label>
				<select id="categ" name="idCateg">
				<?php foreach($categories as $categ) : ?>
						<option value="<?=$categ['id']?>"><?=$categ['name'];?></option>
				<?php endforeach; ?>
				</select>
			<div id="buttonForm">
				<button type="submit">Ajouter</button>
				<button><a href="creerArticle.php">Annuler</a></button>
			</div>
		</fieldset>
	</form>
</main>
<?php include 'footer.phtml.php'; ?>