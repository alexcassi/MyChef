//mostra gli chef
$(() => {
	$.ajax({
		url: 'ListaChefServlet',
		method: 'get'
	})
	.done((u) => {
		console.log(u);
		var lista_chef = u;
		var cList = $('ul.mylist')
		$('.card').each(function(i)
		{
			$(this).children('.card-body').each(function() {
				$(this).children().each(function(){
					$(this).text(''+lista_chef[i].nome);
				})
			})
		    
		});
	});
});
