//mostra i valori attuali dei campi della ricetta da aggiornare
$(() => {
	var id = sessionStorage.getItem('id_ricetta');
	$.ajax({
		url: 'DettagliRicettaDaAggiornareServlet?id_ricetta=' + id,
		method: 'get'
	})
	.done((u) => {
		console.log(u);
		$('#nomeric').val(u.nome_ricetta);
		$('#ingr').val(u.ingredienti);
		$('#tempoprep').val(u.tempo_preparazione);
		$('#pr').val(u.prezzo);

	});

});
