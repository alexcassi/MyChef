//crea lista delle ricette
$(() => {
	var email = 'marco95.cl@hotmail.it';
	$.ajax({
		url: 'ListaRicetteServlet?chef_email=' + 'marco95.cl@hotmail.it',
		method: 'get'
	})
	.done((u) => {
		console.log(u);
		var lista_ricette = u;
		var table = $('table.table')
		var tbody = $('tbody.da_riempire')
		$.each(lista_ricette, function(i)
		{
		    var tr = $('<tr/>')
		        .appendTo(tbody);
		    var th = $('<th/>')
		    	.attr('scope','row')
		    	.attr('value','')
		    	.appendTo(tr);
		    var td1 = $('<td/>')
		    	.appendTo(tr);
		    var input = $('<input/>')
			    .attr('type','number')
			    .attr('value','0')
			    .attr('step','1')
			    .attr('min','0')
	        	.appendTo(td1);
		    var td2 = $('<td/>')
	        	.text(''+lista_ricette[i].nome_ricetta)
	        	.appendTo(tr);
		    var td3 = $('<td/>')
		        .text(''+lista_ricette[i].prezzo+' \u20AC')
		        .appendTo(tr);
		});
		
	});

});

