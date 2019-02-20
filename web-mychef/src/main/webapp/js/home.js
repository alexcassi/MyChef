$(() => {
	$.ajax({
		url: 'ListaChefServlet',
		method: 'get'
	})
	.done((lista_chef) => {
		var l = lista_chef;
		l.sort();
		console.log(l);
		//mostra le immagini degli chef
		$('.card-img-top').each(function(i){
			if(l[i].immagine_profilo===null) {
				$(this).attr('src','card_home/placeholder.jpg')
					}else {
						$(this).attr('src',('immagini_caricate/profili/'+l[i].immagine_profilo));
					}
			});

		//mostra i nomi degli chef
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