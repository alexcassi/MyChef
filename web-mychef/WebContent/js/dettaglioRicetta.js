$(() => {
	var id = sessionStorage.getItem('ricetta');
	$.ajax({
		url: 'leggiricetta?id=' + id,
		method: 'get'
	})
	.done((r) => {
		console.log(r);
		$('#lblNomeRicetta').text(r.nome_ricetta);
		$('#lblIngredienti').text(r.ingredienti);
		$('#lblTempo').text(r.tempo_preparazione);
		$('#lblPrezzo').text(r.prezzo);
		
	});
});