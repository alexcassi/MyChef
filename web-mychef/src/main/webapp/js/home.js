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
			var img = $('#imgp')
			if(l[i].immagine_profilo===null) {
						img.attr('src','card_home/placeholder.jpg')
					}else {
						img.attr('src',('immagini_caricate/profili/'+l[i].immagine_profilo));
					}
			img.css({"width": "270px", "height":"550px", "opacity":"100%"})
			var text1 = $('<h5/>')
		    	.attr('class','card-title')
		        .text(l[i].nome + ' ' + l[i].cognome);
		    var text2 = $('<p/>')
		    	.attr('class','card-text')
		        .text(l[i].luogo_lavoro);
		    $(this).append(text1);
		    $(this).append(text2);
		    $(this).append(img);
			});
	});
});
