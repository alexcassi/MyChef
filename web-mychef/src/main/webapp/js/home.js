//mostra gli chef
$(() => {
	$.ajax({
		url: 'ListaChefServlet',
		method: 'get'
	})
	.done((lista_chef) => {
		var l = lista_chef;
		console.log(l);
		$('.card-body').each(function(i)
		{
			var text1 = $('<h5/>')
		    	.attr('class','card-title')
		        .text(l[i].nome + ' ' + l[i].cognome);
		    var text2 = $('<p/>')
		    	.attr('class','card-text')
		        .text(l[i].luogo_lavoro);
		    $(this).append(text1);
		    $(this).append(text2);
			
		});
	});
});
