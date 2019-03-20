//crea lista delle ricette
$(() => {
	var lista_ricette;
	var email = 'marco95.cl@hotmail.it';
	$.ajax({
		url: 'ListaRicetteServlet?chef_email=' + 'marco95.cl@hotmail.it',
		method: 'get'
	})
	.done((u) => {
		console.log(u);
		lista_ricette = u;
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
		    	.attr('id',i)
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
	

		$('#continua').click(function(){
			var totale = 0;
			var k;
			var contenuto='';
			for(k=0;k<lista_ricette.length;k++) {			
				var input = document.getElementById(k);
				totale+=lista_ricette[k].prezzo*(input.value)
				if(input.value!=0)
				contenuto+=input.value+lista_ricette[k].nome_ricetta+', ';
			};

			$('#contenuto').val(contenuto);
			$('#totale').val(totale);
				
	});

});


