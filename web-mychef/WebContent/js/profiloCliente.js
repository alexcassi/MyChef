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
		
		var url = 'https://maps.google.com/maps?q='+ u.latitudine +','+ u.longitudine +'&hl=es;z=14&amp;output=embed';
		var iframe = '<iframe src="' + url + '" width="300" height="170" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>'
		
		$('#map').append(iframe);
		
	});
});