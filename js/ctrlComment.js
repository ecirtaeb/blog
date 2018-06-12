'mode script';
//
// Contrôle du formulaire de saisie d'un commentaire
//
//===> saisie pseudo

	$("form").submit( function(event) {
	
//	if ( $('input#pseudo').val ) {
		var valeur = $('input#pseudo').val;
		console.log(valeur);
		var spanErreur = $('input#pseudo )  span');
		var msg = "votre pseudo ?";
		spanErreur.addClass('red');
		spanErreur.html(msg);
		 event.preventDefault();
	}
	
})
