$(() => {
	var email = sessionStorage.getItem('cliente');
	$.ajax({
		url: 'leggiUtente?email=' + email,
		method: 'get'
	})
	.done((u) => {
		console.log(u);
		$('#lblNome').text(u.nome);
		$('#lblCognome').text(u.cognome);
	});
});