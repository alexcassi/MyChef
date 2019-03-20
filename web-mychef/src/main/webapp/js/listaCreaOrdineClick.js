$(() => {


$('#continua').click(function(){
			var totale = 0;
			var k;
			var contenuto;
//			for(k=0;k<2.length;k++) {
//				totale+=lista_ricette[k].prezzo*input[k].attr('id').value
//				
//			};
				$.ajax({
			url: 'OutputCreaOrdineController?totale=' + totale,
			method: 'get'
	

		});
	});


});
